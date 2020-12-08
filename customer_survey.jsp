<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>初次調查</title>
    <!-- bootstrap required-->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

     <style>

        .slidecontainer {
  width: 100%;
}

.slider {
  -webkit-appearance: none;
  width: 80%;
  height: 25px;
  background: #d3d3d3;
  outline: none;
  opacity: 0.7;
  -webkit-transition: .2s;
  transition: opacity .2s;
}

.slider:hover {
  opacity: 1;
}

.slider::-webkit-slider-thumb {
  -webkit-appearance: none;
  appearance: none;
  width: 25px;
  height: 25px;
  background:black;
  cursor: pointer;
}

.slider::-moz-range-thumb {
  width: 25px;
  height: 25px;
  background:black;
  cursor: pointer;
}

.form-css{
  text-align: center;
}

/* The container */
.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default checkbox */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 0;
  left: 80px;
  height: 25px;
  width: 25px;
  background-color: #eee;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}

input[type=text]:focus {
  border:solid #555;
  background-color:black;
  color:white;
  transition: 0.2s;
}

  .inputkeyword{
    font-size: 22px;
    width:60%;
    height:40px;
    padding:20px;
    margin:20px;
    background-color: rgb(212, 212, 212);
    border:none;
}

.submit{
  border:0;
  background-color:black;
  color:#fff;
  border-radius:10px;
  padding:10px 20px 10px 20px;
  margin:20px;
  cursor:pointer;}

 .submit:hover{
  color:black;
  background-color:#fff;
  border:2px black solid;
}

#next{
  display: none;
}
#final{
  display: none;
}
     </style>
</head>

<body>

      <div class="row container-fluid" style="margin-top:20px;margin-bottom:20px">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
          <div class="row justify-content-center">
            
            <div id="pre">
            <div class="form-css">
              <h2>興趣調查</h2>
              <hr>
              <p>為了獲得更好的使用體驗，首先我們想調查您對每個主題感興趣的程度</p>
                <form action="add_customer_survey.jsp" method="post">
                  <p>音樂</p>
                  <input type="range" min="1" max="100" value="50" class="slider" id="music" name="music">
                  <p>電影</p>
                  <input type="range" min="1" max="100" value="50" class="slider" id="movie" name="movie">
                  <p>運動</p>
                  <input type="range" min="1" max="100" value="50" class="slider" id="sport" name="sport">
                  <p>遊戲</p>
                  <input type="range" min="1" max="100" value="50" class="slider" id="game" name="game">
                  <p>旅遊</p>
                  <input type="range" min="1" max="100" value="50" class="slider" id="travel" name="travel">
                  <p>美食</p>
                  <input type="range" min="1" max="100" value="50" class="slider" id="food" name="food">
                  <br>
                  <input type="submit" value="Submit" class="submit">
                  </form>

                  <p onclick="myFunction()">下一步</p>
                </div>
            </div>
          
          </div>
        </div>
        <div class="col-sm-2"></div>
      </div>

      
      <div class="row container-fluid"style="margin-top:20px;margin-bottom:20px">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
          <div class="row justify-content-center">

            <div id="next">
            <div class="form-css">
              <h2>隱藏關鍵字</h2>
              <hr>
              <p>若您有任何不想看到的內容，請勾選，我們會為您減少相關文章</p>
              <form action="">
                <label class="container">政治
                  <input type="checkbox" name="political">
                  <span class="checkmark"></span>
                </label>
                <label class="container">成人
                  <input type="checkbox" name="adult">
                  <span class="checkmark"></span>
                </label>
                <p>您也可以填寫關鍵字，稍後可在會員專區新增或修改</p>
                  <input type="text" id="word1" name="word1" class="inputkeyword"><br>
                  <input type="text" id="word2" name="word2" class="inputkeyword"><br>
                  <input type="text" id="word3" name="word3" class="inputkeyword"><br>
                  <input type="submit" value="Submit" class="submit">
                </form>
                <a href="public/index.html">下一步</a>
            </div>
          </div>

          </div>
        </div>
        <div class="col-sm-2"></div>
      </div>
    

      <div class="row container-fluid" style="margin-top:20px;margin-bottom:20px">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
          <div class="row justify-content-center">
            <div id="final">
              <h1>恭喜您！</h1>
              <hr>
              <p>現在已可以開始使用Cluster提供的服務！</p>
              <a href="http://localhost:8080/test/ClusterApp/homepage.jsp">開始</a>
            </div>
          </div>
        </div>
        </div>
        <div class="col-sm-2"></div>
      </div>

<script>
  //disable 1
  function myFunction() {
  document.getElementById("next").style.display = "inline";
  document.getElementById("pre").style.display = "none";
}

</script>



</body>
</html>
