// Setup basic express server
const express = require('express');
const app = express();
const path = require('path');
const server = require('http').createServer(app);
const io = require('socket.io')(server);
const port = process.env.PORT || 3000;

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

/*conn.connect(
    function (err) { 
        if (err) { 
            console.log("!!! Cannot connect !!! Error:");
            throw err;
        }
        else {
            console.log("Connection established.");
            updateData();
        }   
    });

    updateData();
function updateData(){
      conn.query('INSERT INTO chat (userid, chatcontent) VALUES (?, ?);', [160 , '測試test'],
            function (err, results, fields) {
              if (err) throw err;
          else console.log('Inserted ' + results.affectedRows + ' row(s).');
      })
      conn.end(
          function (err) { 
                if (err) throw err;
                else  console.log('Done.') 
        });
};*/

/*
const mysql = require('mysql');
const pool = mysql.createPool({
connectionLimit: 10,
host: 'localhost',
user: 'root',
password: '1234',
database: 'cluster'
}); 

app.get('/', function(req, res){
  // 接上連接池
  pool.getConnection((err, connection) => {
    if (err) throw err;
    // 輸入 SQL 語法查詢
    connection.query('SELECT * FROM chat ORDER BY rand() limit 1',   
    (err, rows, fields) => {
      if (err) throw err;
      // 送出查詢結果
      res.send(rows);
      // 斷開連結
      connection.release();
    });
  });
});*/


server.listen(port, () => {
  console.log('Server listening at port %d', port);
});

// Routing
app.use(express.static(path.join(__dirname, 'public')));

// Chatroom

let numUsers = 0;

io.on('connection', (socket) => {
  let addedUser = false;

  // when the client emits 'new message', this listens and executes
  socket.on('new message', (data) => {
    // we tell the client to execute 'new message'
    socket.broadcast.emit('new message', {
      username: socket.username,
      message: data
    });
    updateData();
    function updateData(){
      conn.query('INSERT INTO chat (userid, chatcontent) VALUES (?, ?);', [socket.username , data],
            function (err, results, fields) {
              if (err) throw err;
          else console.log('Inserted ' + results.affectedRows + ' row(s).');
      })
      
};

/*
conn.end(
  function (err) { 
        if (err) throw err;
        else  console.log('Done.') 
}); */

  });
  
  // when the client emits 'add user', this listens and executes
  socket.on('add user', (username) => {
    if (addedUser) return;

    // we store the username in the socket session for this client
    socket.username = username;
    ++numUsers;
    addedUser = true;
    socket.emit('login', {
      numUsers: numUsers
    });
    // echo globally (all clients) that a person has connected
    socket.broadcast.emit('user joined', {
      username: socket.username,
      numUsers: numUsers
    });
  });

  // when the client emits 'typing', we broadcast it to others
  socket.on('typing', () => {
    socket.broadcast.emit('typing', {
      username: socket.username
    });
  });

  // when the client emits 'stop typing', we broadcast it to others
  socket.on('stop typing', () => {
    socket.broadcast.emit('stop typing', {
      username: socket.username
    });
  });

  // when the user disconnects.. perform this
  socket.on('disconnect', () => {
    if (addedUser) {
      --numUsers;

      // echo globally that this client has left
      socket.broadcast.emit('user left', {
        username: socket.username,
        numUsers: numUsers
      });
    }
  });
});
