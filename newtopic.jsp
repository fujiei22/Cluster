<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>開新話題(暫定)</title>
    <!-- bootstrap required-->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

     <style>

   
     </style>
</head>

<body>

      <div class="container-fluid">
          <div class="row justify-content-center">
            <form action="add_topic.jsp" method="post">
              <h2>開新話題</h2>
              <div class="form-group">
                <label for="title">標題</label>
                <input type="text" class="form-control" id="title"  name="subject" placeholder="請輸入標題">
              </div>
              <div class="form-group">
                <label for="textarea">內文</label>
                <textarea class="form-control" id="textarea"  name="content" rows="4" placeholder="請輸入內文"></textarea>
              </div>
              <div class="form-group">
                <label for="category">分類</label>
                <select class="form-control" id="category" name="category">
                  <option value="music">音樂</option>
                  <option value="movie">電影</option>
                  <option value="sport">運動</option>
                  <option value="game">遊戲</option>
                  <option value="travel">旅遊</option>
                  <option value="food">美食</option>
                </select>
              </div>
              <div class="form-group">
                <label for="tag">tag</label>
                <input type="text" class="form-control" id="tag" placeholder="請輸入tag">
              </div>
              <button onclick="">取消</button>
              <input type="submit">
            </form>

            </div>
          
          </div>


</body>
</html>
