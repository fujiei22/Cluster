var express = require('express');
var path = require('path');
var IO = require('socket.io');
var router = express.Router();
var mysql = require('mysql');

var app = express();
var server = require('http').Server(app);
app.use(express.static(path.join(__dirname, 'public')));
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

var config =
{
    host: 'localhost',
    user: 'root',
    password: '1234',
    database: 'cluster',
    //ssl: true
};

var conn = new mysql.createConnection(config);
conn.connect();
// 创建socket服务
var socketIO = IO(server);
// 房间用户名单
var roomInfo = {};

socketIO.on('connection', function (socket) {
  // 获取请求建立socket连接的url
  // 如: http://localhost:3000/room/room_1, roomID为room_1
  var url = socket.request.headers.referer;
  var splited = url.split('/');
  var roomID = splited[splited.length - 1];   // 获取房间ID
  var user = '';
  var pno ='';

  socket.on('join', function (userName,pnumber) {
    user = userName;
    pno = pnumber;
    console.log(pno);
  
    // 将用户昵称加入房间名单中
    if (!roomInfo[roomID]) {
      roomInfo[roomID] = [];
    }
    roomInfo[roomID].push(user);

    socket.join(roomID);    // 加入房间
    // 通知房间内人员
    conn.query('SELECT Name,chatcontent FROM chat WHERE title = ?', [pno],
              function (err, results, fields) {
                if (err) throw err;
            else {
              var len =results.length;
              for(i=0;i<len;i++){
                　socketIO.to(socket.id).emit('msg', results[i].Name, results[i].chatcontent);
                }
               
              
            }
        })

    socketIO.to(roomID).emit('sys', user + '加入了房間', roomInfo[roomID]);  
    console.log(user + '加入了' + roomID);
  });
  

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
    socketIO.to(roomID).emit('sys', user + '退出了房間', roomInfo[roomID]);
    console.log(user + '退出了' + roomID);
  });

  // 接收用户消息,发送相应的房间
  socket.on('message', function (msg) {
    // 验证如果用户不在房间内则不给发送
    if (roomInfo[roomID].indexOf(user) === -1) {  
      return false;
    }
    else{
      conn.query('INSERT INTO chat (Name, title,chatcontent) VALUES (?, ?,?);', [user ,pno , msg],
              function (err, results, fields) {
                if (err) throw err;
            else console.log('In' + results.affectedRows + ' row(s).');
        })
      
      socketIO.to(roomID).emit('msg', user, msg);
    }
    
  });

});

// room page
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
