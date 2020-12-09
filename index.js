// Setup basic express server
const express = require('express');
const app = express();
const path = require('path');
const server = require('http').createServer(app);
const io = require('socket.io')(server);
const port = process.env.PORT || 3000;
var router = express.Router();

app.use(express.static(path.join(__dirname, 'public')));
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

var socketIO = io(server);
// 房间用户名单
var roomInfo = {};

const mysql = require('mysql');

var config =
{
    host: 'localhost',
    user: 'root',
    password: '1234',
    database: 'cluster',
    ssl: true
};

const conn = new mysql.createConnection(config);

/*
server.listen(port, () => {
  console.log('Server listening at port %d', port);
});

// Routing
app.use('/', router);*/

// Chatroom
let numUsers = 0;

socketIO.on('connection', (socket) => {
  let addedUser = false;

  var url = socket.request.headers.referer;
  var splited = url.split('/');
  var roomID = splited[splited.length - 1];   // 获取房间ID
  var user = '';
  /*1130
  
  socket.on('connectToRoom', (room)  => {
    //console.log(room);
     socket.join("room-"+room);
     io.sockets.in("room-"+room).emit('welcomsg', "You are in room "+room);
    });
  */

 socket.on('join', function (userName) {
  user = userName;

  // 将用户昵称加入房间名单中
  if (!roomInfo[roomID]) {
    roomInfo[roomID] = [];
  }
  roomInfo[roomID].push(user);

  socket.join(roomID);    // 加入房间
  // 通知房间内人员
  socketIO.to(roomID).emit('sys', user + '加入了房间', roomInfo[roomID]);  
  console.log(user + '加入了' + roomID);
});


  // when the client emits 'new message', this listens and executes
  socket.on('new message', (data , cookies) => {
    console.log(data);
    console.log(cookies);
    // we tell the client to execute 'new message'

    io.sockets.in("room-"+room).emit('new message', {
      username: socket.username,
      message: data,
      cookies : cookies
    });
    
    updateData();

    function updateData(){
      conn.query('INSERT INTO chat (Name, chatcontent, room) VALUES (?, ?, ?);', [socket.username , data,cookies],
            function (err, results, fields) {
              if (err) throw err;
          else console.log('In' + results.affectedRows + ' row(s).');
      })
      
};

  });

  socket.on('message', function (msg) {
    // 验证如果用户不在房间内则不给发送
    if (roomInfo[roomID].indexOf(user) === -1) {  
      return false;
    }
    socketIO.to(roomID).emit('msg', user, msg);
  });


  
  // when the client emits 'add user', this listens and executes
  socket.on('add user', (username,room) => {
    if (addedUser) return;

    socket.join("room-"+room);
    io.sockets.in("room-"+room).emit('welcomsg', "You are in room "+room);
    // we store the username in the socket session for this client
    socket.username = username;
    ++numUsers;
    addedUser = true;
    io.sockets.in("room-"+room).emit('login', {
      numUsers: numUsers
    });
    // echo globally (all clients) that a person has connected
    io.sockets.in("room-"+room).emit('user joined', {
      username: socket.username,
      numUsers: numUsers
    });
  });

  // when the client emits 'typing', we broadcast it to others
  socket.on('typing', () => {
    io.sockets.in("room-"+room).emit('typing', {
      username: socket.username
    });
  });

  // when the client emits 'stop typing', we broadcast it to others
  socket.on('stop typing', () => {
    io.sockets.in("room-"+room).emit('stop typing', {
      username: socket.username
    });
  });

  // when the user disconnects.. perform this

  socket.on('leave', function () {
    socket.emit('disconnect');
  });

  socket.on('disconnect', function () {
    // 从房间名单中移除
    var index = roomInfo[roomID].indexOf(user);
    if (index !== -1) {
      roomInfo[roomID].splice(index, 1);
    }

    socket.leave(roomID);    // 退出房间
    socketIO.to(roomID).emit('sys', user + '退出了房间', roomInfo[roomID]);
    console.log(user + '退出了' + roomID);
  });

  socket.on('disconnect', () => {
    if (addedUser) {
      --numUsers;

      // echo globally that this client has left
      io.sockets.in("room-"+room).emit('user left', {
        username: socket.username,
        numUsers: numUsers
      });
    }
  });
});

router.get('/room/:roomID', function (req, res) {
  var roomID = req.params.roomID;

  // 渲染页面数据(见views/room.hbs)
  res.render('room', {
    roomID: roomID,
    users: roomInfo[roomID]
  });
});

app.use('/', router);

server.listen(3000, function () {
  console.log('server listening on port 3000');
});
