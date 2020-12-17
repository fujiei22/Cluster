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

       body{
        background: #f2709c;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #ff9472, #f2709c);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #ff9472, #f2709c); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

       }
p{
  color:white;
}
       
        .slidecontainer {
  width: 100%;
}
.slider {
  -webkit-appearance: none;
  width: 90%;
  height: 15px;
  border-radius: 10px;
  background: #fdfdfd;
  outline: none;
  opacity: 0.7;
  -webkit-transition: .2s;
  transition: opacity .2s;
  margin-bottom:5px;
}
.slider:hover {
  opacity: 1;
}
.slider::-webkit-slider-thumb {
  -webkit-appearance: none;
  appearance: none;
  width: 30px;
  height: 30px;
  border-radius: 50px;
  background:rgb(51, 51, 51);
  cursor: pointer;
}
.slider::-moz-range-thumb {
  width: 25px;
  height: 25px;
  background:rgb(0, 0, 0);
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
              <h2 style="font-weight: bold;color:white;text-decoration: underline;">興趣調查</h2>
              <hr>
              <p style="font-size: 16px;">為了獲得更好的使用體驗，首先我們想調查您對每個主題感興趣的程度</p>
              <p style="position:absolute; left: 215px;font-size: 20px;">Less</p><p style="position:absolute; right: 215px;font-size: 20px;">More</p>
                <form action="add_customer_survey.jsp" method="post">
                  <p style="font-size: larger;margin-top:5px;font-size: 20px;">閱讀</p>
                  <input type="range" min="1" max="100" value="0" class="slider" id="read" name="read">
                  <p style="font-size: larger;margin-top:5px;font-size: 20px;">繪畫</p>
                  <input type="range" min="1" max="100" value="0" class="slider" id="draw" name="draw">
                  <p style="font-size: larger;margin-top:5px;font-size: 20px;">遊戲</p>
                  <input type="range" min="1" max="100" value="0" class="slider" id="game" name="game">
                  <p style="font-size: larger;margin-top:5px;font-size:20px;">電影</p>
                  <input type="range" min="1" max="100" value="0" class="slider" id="movie" name="movie">
                  <p style="font-size: larger;margin-top:5px;font-size: 20px;">運動</p>
                  <input type="range" min="1" max="100" value="0" class="slider" id="sport" name="sport">
                  <p style="font-size: larger;margin-top:5px;font-size: 20px;">舞蹈</p>
                  <input type="range" min="1" max="100" value="0" class="slider" id="dance" name="dance">
                  <p style="font-size: larger;margin-top:5px;font-size:20px;">旅遊</p>
                  <input type="range" min="1" max="100" value="0" class="slider" id="travel" name="travel">
                  <p style="font-size: larger;margin-top:5px;font-size: 20px;">購物</p>
                  <input type="range" min="1" max="100" value="0" class="slider" id="shopping" name="shopping">
                  <br>
                  <input type="submit" value="下一步" class="submit">
                  </form>

                </div>
            </div>
          
          </div>
        </div>
        <div class="col-sm-2"></div>
      </div>

</body>
</html>