<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>紙娃娃</title>
    <link href="css/header.css" rel=stylesheet type="text/css" >
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style type="text/css">
       	body{
         background:#C4E1FF;
         height: 100%;
         overflow: hidden;
       	}
#backicon{
  width: 50px;
  position:absolute;
  left: 20px;
  top:10px;
}
#finishicon{
  width: 50px;
  position:absolute;
  top:10px;
  right: 20px;
}
#skin{
  width: 300px;
  position:absolute;
  left: 35.5%;
  top:8.5px;
  z-index: 1;  
}
#eyes{
  width:300px;
  position:absolute;
  left: 35.5%;
  top:8.5px;
  z-index: 2;
}
#eyebrow{
  width:300px;
  position:absolute;
  left: 35.5%;
  top:7px;
  z-index: 3;
}
#mouth{
  width:300px;
  position:absolute;
  left: 35.5%;
  top:8.5px;
  z-index: 4; 
}
#fronthair{
  width:300px;
  position:absolute;
  left: 35.5%;
  top:8.5px;
  z-index: 5;
}
#backhair{
  width:300px;
  position:absolute;
  left: 35.5%;
  top:8.5px;
  z-index: 6; 
}
#clothes{
  width:300px;
  position:absolute;
  left: 35.5%;
  top:8.5px;  
  z-index: 7; 
}
#accessories{
  width:300px;
  position:absolute;
  left: 35.5%;
  top:8.5px;
  z-index: 8; 
}
.clickimg{
  height: 45px;
  margin-left:28%;
  margin-right:28%;
}
.cbtn{
  height:115px;
  margin-right:5px;
  margin-left:5px;
  margin-top:10px;
}
.cbtn2{
  height: 70px;
  margin-left:5px
  margin-right:5px;
  margin-top:10px;
}
ul, li {
  margin: 0;
  padding: 0;
  list-style: none;
}
.abgne_tab {
  clear: left;
  width: 1296px;
  margin: 10px 0;
  height: 50px;
  position:absolute;
  top: 49%;
}
ul.tabs {
  width: 100%;
}
ul.tabs li {
  float: left;
  height: 50px;
  width: 160px;
  position: relative;
  border: none;
  background:rgba(255,255,255,0.6);
}
ul.tabs li a {
  display: block;
  padding: 0 20px;
  color: #000;
  border:1.2px solid #fff;
  text-decoration: none;
}
ul.tabs li a:hover {
  background: #fff;
}
ul.tabs li.active  {
  background: #fff;
  border-bottom: 1px solid#fff;
}
ul.tabs li.active a:hover {
  background: #fff;
}
div.tab_container {
  clear: left;
  width: 100%;
  height: 254px;
  position:absolute;
  bottom: 0px;
  border: none;
  background: #fff;
}
.dropbtn {
    background-color: #ffffff;
    border: none;
    height:115px;
    margin-right:5px;
    margin-left:5px;
    margin-top:10px;
}
.dropdown {
    position: relative;
    display: inline-block;
}
.dropdown-content {
    display:none;
    background-color: #f9f9f9;
    width:auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    white-space: nowrap;
    position: absolute;
}
.dropdown a:hover {background-color: #f1f1f1}
.show {display:block;}
    </style>

<script type="text/javascript">
$(function(){
	// 預設顯示第一個 Tab 
	var _showTab = 0;
	var $defaultLi = $('ul.tabs li').eq(_showTab).addClass('active');
	$($defaultLi.find('a').attr('href')).siblings().hide();
 
	// 當 li 頁籤被點擊時...
	// 若要改成滑鼠移到 li 頁籤就切換時, 把 click 改成 mouseover
	$('ul.tabs li').click(function() {
		// 找出 li 中的超連結 href(#id)
		var $this = $(this),
			_clickTab = $this.find('a').attr('href');
		// 把目前點擊到的 li 頁籤加上 .active
		// 並把兄弟元素中有 .active 的都移除 class
		$this.addClass('active').siblings('.active').removeClass('active');
		// 淡入相對應的內容並隱藏兄弟元素
		$(_clickTab).stop(false, true).fadeIn().siblings().hide();
 
		return false;
	}).find('a').focus(function(){
		this.blur();
	});
});	
	$(function(){	
	$("#tab1 img").click(function(){		
		var num = $(this).attr("id").substr(1);		
		$("#skin").attr("src" , "img/header/skin/skin" + num + ".png");
	});
});
	$(function(){	
	$("#tab2 img").click(function(){		
		var num = $(this).attr("id").substr(1);		
		$("#eyes").attr("src" , "img/header/eyes/eyes" + num + ".png");
	});
});
	$(function(){	
	$("#tab3 img").click(function(){		
		var num = $(this).attr("id").substr(2);		
		$("#eyebrow").attr("src" , "img/header/eyebrow/eyebrow" + num + ".png");
	});
});
	$(function(){	
	$("#tab4 img").click(function(){		
		var num = $(this).attr("id").substr(1);		
		$("#mouth").attr("src" , "img/header/mouth/mouth" + num + ".png");
	});
});
	$(function(){	
	$("#tab5 img").click(function(){		
		var num = $(this).attr("id").substr(1);		
		$("#fronthair").attr("src" , "img/header/fronthair/fronthair" + num + ".png");
	});
});
	$(function(){	
	$("#tab6 img").click(function(){		
		var num = $(this).attr("id").substr(1);		
		$("#backhair").attr("src" , "img/header/backhair/backhair" + num + ".png");
	});
});
	$(function(){	
	$("#tab7 img").click(function(){		
		var num = $(this).attr("id").substr(1);		
		$("#clothes").attr("src" , "img/header/clothes/clothes" + num + ".png");
	});
});
	$(function(){	
	$("#tab8 img").click(function(){		
		var num = $(this).attr("id").substr(1);		
		$("#accessories").attr("src" , "img/header/accessories/accessories" + num + ".png");
	});
});
function myFunction(num) {
    document.getElementById("myDropdown"+num).classList.toggle("show");
}
// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
</head>

<body>
	<%
try {
    Class.forName("com.mysql.jdbc.Driver");
    try {   
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql;
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else
        {      
           sql="USE `cluster`";
           con.createStatement().execute(sql);
           sql="SELECT * FROM `skin`";
           ResultSet rs=con.createStatement().executeQuery(sql);
		   int rs1_count =0;
		   int rs2_count =0;
		   int rs3_count =7;
		   int rs4_count =13;
		   int rs5_count =17;
		   int rs6_count =0;
		   int rs7_count =0;
		   int rs8_count =0;
		   int rs9_count =7;
		   int rs10_count =14;
		   int rs11_count =21;
		   int rs12_count =28;
		   int rs13_count =31;
		   int rs14_count =0;
		   int rs15_count =7;
		   int rs16_count =14;
		   int rs17_count =21;
		   int rs18_count =28;
		   int rs19_count =0;
		   int rs20_count =7;
		   int rs21_count =13;
		   int rs22_count =17;
		   int rs23_count =0;
	%>


	<div id="backcolor">
	<a href="setting.jsp"><img src="img/back.png" id="backicon"></a>
	<a href="setting.jsp"><img src="img/finish.png" id="finishicon"></a>
	<img src="img/header/skin/skin1.png" id="skin" class="headersstyle">
	<img src="img/header/eyes/eyes1.png" id="eyes" class="headersstyle">
	<img src="img/header/eyebrow/eyebrow4.png" id="eyebrow" class="headersstyle">
	<img src="img/header/mouth/mouth1.png" id="mouth" class="headersstyle">
	<img src="img/header/fronthair/fronthair29.png" id="fronthair" class="headersstyle">
	<img src="img/header/backhair/backhair8.png" id="backhair" class="headersstyle">
	<img src="img/header/clothes/clothes18.png" id="clothes" class="headersstyle">
	<img src="img/header/accessories/accessories7.png" id="accessories" class="headersstyle">
			<div class="abgne_tab">
				<ul class="tabs">
				<li><a href="#tab1"><img src="img/header/skin/skin2.png" class="clickimg"></a></li>
				<li><a href="#tab2"><img src="img/header/eyes/eyes1.png" class="clickimg"></a></li>
				<li><a href="#tab3"><img src="img/header/eyebrow/eyebrow4.png" class="clickimg"></a></li>
				<li><a href="#tab4"><img src="img/header/mouth/mouth1.png" class="clickimg"></a></li>
				<li><a href="#tab5"><img src="img/header/fronthair/fronthair2.png" class="clickimg"></a></li>
				<li><a href="#tab6"><img src="img/header/backhair/backhair2.png" class="clickimg"></a></li>
				<li><a href="#tab7"><img src="img/header/clothes/clothes1.png" class="clickimg"></a></li>
                <li><a href="#tab8"><img src="img/header/accessories/accessories4.png" class="clickimg"></a></li>
			</ul>
			</div>
			<div class="tab_container">
			<div id="tab1" class="tab_content">
              <%
              		sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 136 AND 139";
           			ResultSet rs1 =  con.createStatement().executeQuery(sql);
					while(rs1.next())
					{	
						rs1_count+=1;
						out.println("<img src="+rs1.getString(2)+rs1.getString(3)+".png class='cbtn' id='s"+rs1_count+"'>");
					}
              
              %>
            <!--img src="img/header/skin/skin1.png" class="cbtn" id="s1">
            <img src="img/header/skin/skin2.png" class="cbtn" id="s2">
            <img src="img/header/skin/skin3.png" class="cbtn" id="s3">
            <img src="img/header/skin/skin4.png" class="cbtn" id="s4"-->
			</div>
			<div id="tab2" class="tab_content">	
				<div class="dropdown">
			  		<img src="img/header/eyes/eyes1.png" class="dropbtn" onclick="myFunction(1)" height="115px"> 
			  		<div class="dropdown-content" id="myDropdown1">
			  			<%
			  				sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 69 AND 75";
           					ResultSet rs2 =  con.createStatement().executeQuery(sql);
							while(rs2.next())
							{	
								rs2_count+=1;
								out.println("<img src="+rs2.getString(2)+rs2.getString(3)+".png class='cbtn2' id='e"+rs2_count+"'>");
							}
						
			  			%>
			  			<!--
			  			<img src="img/header/eyes/eyes1.png" class="cbtn2" id="e1">
			  			<img src="img/header/eyes/eyes2.png" class="cbtn2" id="e2">
			  			<img src="img/header/eyes/eyes3.png" class="cbtn2" id="e3">
			  			<img src="img/header/eyes/eyes4.png" class="cbtn2" id="e4">
			  			<img src="img/header/eyes/eyes5.png" class="cbtn2" id="e5">
			  			<img src="img/header/eyes/eyes6.png" class="cbtn2" id="e6">
			  			<img src="img/header/eyes/eyes7.png" class="cbtn2" id="e7">
			  			-->

			  		</div>
				</div>
			<div class="dropdown">
				<img src="img/header/eyes/eyes9.png" class="dropbtn" onclick="myFunction(2)" height="115px">
              	<div class="dropdown-content" id="myDropdown2">
              		<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 76 AND 81";
           				ResultSet rs3 =  con.createStatement().executeQuery(sql);
						while(rs3.next())
						{	
							rs3_count+=1;
							out.println("<img src="+rs3.getString(2)+rs3.getString(3)+".png class='cbtn2' id='e"+rs3_count+"'>");
						}
					
			  		%>
              		<!--img src="img/header/eyes/eyes8.png" class="cbtn2" id="e8">
			  		<img src="img/header/eyes/eyes9.png" class="cbtn2" id="e9">
			  		<img src="img/header/eyes/eyes10.png" class="cbtn2" id="e10">
			  		<img src="img/header/eyes/eyes11.png" class="cbtn2" id="e11">
			  		<img src="img/header/eyes/eyes12.png" class="cbtn2" id="e12">
			  		<img src="img/header/eyes/eyes13.png" class="cbtn2" id="e13"-->
			  		
			  	</div>
			</div>
			<div class="dropdown">			  
				<img src="img/header/eyes/eyes14.png" class="dropbtn" onclick="myFunction(3)" height="115px">
            	<div class="dropdown-content" id="myDropdown3">
            	<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 82 AND 85";
           				ResultSet rs4 =  con.createStatement().executeQuery(sql);
						while(rs4.next())
						{	
							rs4_count+=1;
							out.println("<img src="+rs4.getString(2)+rs4.getString(3)+".png class='cbtn2' id='e"+rs4_count+"'>");
						}
					
			  		%>
			  		<!--img src="img/header/eyes/eyes14.png" class="cbtn2" id="e14">
			  		<img src="img/header/eyes/eyes15.png" class="cbtn2" id="e15">
			  		<img src="img/header/eyes/eyes16.png" class="cbtn2" id="e16">
			  		<img src="img/header/eyes/eyes17.png" class="cbtn2" id="e17"-->
			  	</div>
			</div>
			<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 86 AND 88";
           				ResultSet rs5 =  con.createStatement().executeQuery(sql);
						while(rs5.next())
						{	
							rs5_count+=1;
							out.println("<img src="+rs5.getString(2)+rs5.getString(3)+".png class='cbtn' id='e"+rs5_count+"'>");
						}
					
			  		%>
				<!--img src="img/header/eyes/eyes18.png" class="cbtn" id="e18">
				<img src="img/header/eyes/eyes19.png" class="cbtn" id="e19">
				<img src="img/header/eyes/eyes20.png" class="cbtn" id="e20"-->
			</div>
			<div id="tab3" class="tab_content">
				<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 65 AND 68";
           				ResultSet rs6 =  con.createStatement().executeQuery(sql);
						while(rs6.next())
						{	
							rs6_count+=1;
							out.println("<img src="+rs6.getString(2)+rs6.getString(3)+".png class='cbtn' id='eb"+rs6_count+"'>");
						}
					
			  		%>
				<!--img src="img/header/eyebrow/eyebrow1.png" class="cbtn" id="eb1">
				<img src="img/header/eyebrow/eyebrow2.png" class="cbtn" id="eb2">
				<img src="img/header/eyebrow/eyebrow3.png" class="cbtn" id="eb3">
				<img src="img/header/eyebrow/eyebrow4.png" class="cbtn" id="eb4"-->
			</div>
			<div id="tab4" class="tab_content">
				<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 128 AND 135";
           				ResultSet rs7 =  con.createStatement().executeQuery(sql);
						while(rs7.next())
						{	
							rs7_count+=1;
							out.println("<img src="+rs7.getString(2)+rs7.getString(3)+".png class='cbtn' id='m"+rs7_count+"'>");
						}
					
			  		%>
				<!--img src="img/header/mouth/mouth1.png" class="cbtn" id="m1">
				<img src="img/header/mouth/mouth2.png" class="cbtn" id="m2">
				<img src="img/header/mouth/mouth3.png" class="cbtn" id="m3">
				<img src="img/header/mouth/mouth4.png" class="cbtn" id="m4">
				<img src="img/header/mouth/mouth5.png" class="cbtn" id="m5">
				<img src="img/header/mouth/mouth6.png" class="cbtn" id="m6">
				<img src="img/header/mouth/mouth7.png" class="cbtn" id="m7">
				<img src="img/header/mouth/mouth8.png" class="cbtn" id="m8"-->
			</div>
			<div id="tab5" class="tab_content">
				<div class="dropdown">
					<img src="img/header/fronthair/fronthair1.png" class="dropbtn" onclick="myFunction(4)">
                <div class="dropdown-content" id="myDropdown4">
                	<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 89 AND 95";
           				ResultSet rs8 =  con.createStatement().executeQuery(sql);
						while(rs8.next())
						{	
							rs8_count+=1;
							out.println("<img src="+rs8.getString(2)+rs8.getString(3)+".png class='cbtn2' id='f"+rs8_count+"'>");
						}
					
			  		%>
			  		<!--img src="img/header/fronthair/fronthair1.png" class="cbtn2" id="f1">
			  		<img src="img/header/fronthair/fronthair2.png" class="cbtn2" id="f2">
			  		<img src="img/header/fronthair/fronthair3.png" class="cbtn2" id="f3">
			  		<img src="img/header/fronthair/fronthair4.png" class="cbtn2" id="f4">
			  		<img src="img/header/fronthair/fronthair5.png" class="cbtn2" id="f5">
			  		<img src="img/header/fronthair/fronthair6.png" class="cbtn2" id="f6">
			  		<img src="img/header/fronthair/fronthair7.png" class="cbtn2" id="f7"-->
				</div>
				</div>
				<div class="dropdown">
				<img src="img/header/fronthair/fronthair8.png" class="dropbtn" onclick="myFunction(5)">
                <div class="dropdown-content" id="myDropdown5">
                	<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 96 AND 102";
           				ResultSet rs9 =  con.createStatement().executeQuery(sql);
						while(rs9.next())
						{	
							rs9_count+=1;
							out.println("<img src="+rs9.getString(2)+rs9.getString(3)+".png class='cbtn2' id='f"+rs9_count+"'>");
						}
					
			  		%>
			  	 <!--img src="img/header/fronthair/fronthair8.png" class="cbtn2" id="f8">
			  	 <img src="img/header/fronthair/fronthair9.png" class="cbtn2" id="f9">
			  	 <img src="img/header/fronthair/fronthair10.png" class="cbtn2" id="f10">
			  	 <img src="img/header/fronthair/fronthair11.png" class="cbtn2" id="f11">
			  	 <img src="img/header/fronthair/fronthair12.png" class="cbtn2" id="f12">
			  	 <img src="img/header/fronthair/fronthair13.png" class="cbtn2" id="f13">
			  	 <img src="img/header/fronthair/fronthair14.png" class="cbtn2" id="f14"-->
			  </div></div>
				<div class="dropdown">
				<img src="img/header/fronthair/fronthair15.png" class="dropbtn" onclick="myFunction(6)">
                <div class="dropdown-content" id="myDropdown6">
                	<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 103 AND 109";
           				ResultSet rs10 =  con.createStatement().executeQuery(sql);
						while(rs10.next())
						{	
							rs10_count+=1;
							out.println("<img src="+rs10.getString(2)+rs10.getString(3)+".png class='cbtn2' id='f"+rs10_count+"'>");
						}
					
			  		%>
			  	 <!--img src="img/header/fronthair/fronthair15.png" class="cbtn2" id="f15">
			  	 <img src="img/header/fronthair/fronthair16.png" class="cbtn2" id="f16">
			  	 <img src="img/header/fronthair/fronthair17.png" class="cbtn2" id="f17">
			  	 <img src="img/header/fronthair/fronthair18.png" class="cbtn2" id="f18">
			  	 <img src="img/header/fronthair/fronthair19.png" class="cbtn2" id="f19">
			  	 <img src="img/header/fronthair/fronthair20.png" class="cbtn2" id="f20">
			  	 <img src="img/header/fronthair/fronthair21.png" class="cbtn2" id="f21"-->
			  </div></div>
				<div class="dropdown">
				<img src="img/header/fronthair/fronthair22.png" class="dropbtn" onclick="myFunction(7)">
                <div class="dropdown-content" id="myDropdown7">
                	<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 110 AND 116";
           				ResultSet rs11 =  con.createStatement().executeQuery(sql);
						while(rs11.next())
						{	
							rs11_count+=1;
							out.println("<img src="+rs11.getString(2)+rs11.getString(3)+".png class='cbtn2' id='f"+rs11_count+"'>");
						}
					
			  		%>
			  	 <!--img src="img/header/fronthair/fronthair22.png" class="cbtn2" id="f22">
			  	 <img src="img/header/fronthair/fronthair23.png" class="cbtn2" id="f23">
			  	 <img src="img/header/fronthair/fronthair24.png" class="cbtn2" id="f24">
			  	 <img src="img/header/fronthair/fronthair25.png" class="cbtn2" id="f25">
			  	 <img src="img/header/fronthair/fronthair26.png" class="cbtn2" id="f26">
			  	 <img src="img/header/fronthair/fronthair27.png" class="cbtn2" id="f27">
			  	 <img src="img/header/fronthair/fronthair28.png" class="cbtn2" id="f28"-->
			  </div></div>
				<div class="dropdown">
				<img src="img/header/fronthair/fronthair29.png" class="dropbtn" onclick="myFunction(8)">
                <div class="dropdown-content" id="myDropdown8">
                	<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 117 AND 119";
           				ResultSet rs12 =  con.createStatement().executeQuery(sql);
						while(rs12.next())
						{	
							rs12_count+=1;
							out.println("<img src="+rs12.getString(2)+rs12.getString(3)+".png class='cbtn2' id='f"+rs12_count+"'>");
						}
					
			  		%>
			  	 <!--img src="img/header/fronthair/fronthair29.png" class="cbtn2" id="f29">
			  	 <img src="img/header/fronthair/fronthair30.png" class="cbtn2" id="f30">
			  	 <img src="img/header/fronthair/fronthair31.png" class="cbtn2" id="f31"-->
			  </div></div>
				<div class="dropdown">
				<img src="img/header/fronthair/fronthair32.png" class="dropbtn" onclick="myFunction(9)">
                <div class="dropdown-content" id="myDropdown9">
                	<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 120 AND 126";
           				ResultSet rs13 =  con.createStatement().executeQuery(sql);
						while(rs13.next())
						{	rs13_count+=1;
							out.println("<img src="+rs13.getString(2)+rs13.getString(3)+".png class='cbtn2' id='f"+rs13_count+"'>");
						}
					
			  		%>
			  	 <!--img src="img/header/fronthair/fronthair32.png" class="cbtn2" id="f32">
			  	 <img src="img/header/fronthair/fronthair33.png" class="cbtn2" id="f33">
			  	 <img src="img/header/fronthair/fronthair34.png" class="cbtn2" id="f34">
			  	 <img src="img/header/fronthair/fronthair35.png" class="cbtn2" id="f35">
			  	 <img src="img/header/fronthair/fronthair36.png" class="cbtn2" id="f36">
			  	 <img src="img/header/fronthair/fronthair37.png" class="cbtn2" id="f37">
			  	 <img src="img/header/fronthair/fronthair38.png" class="cbtn2" id="f38"-->
			  </div></div>				
			  <img src="img/cross.png" id="f39" height="72px" style="position:relative; top:10px; margin-left:20px;float:left;">
			</div>
			<div id="tab6" class="tab_content">
				<div class="dropdown">
				<img src="img/header/backhair/backhair1.png" class="dropbtn" onclick="myFunction(10)">
                <div class="dropdown-content" id="myDropdown10">
                	<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 9 AND 15";
           				ResultSet rs14 =  con.createStatement().executeQuery(sql);
						while(rs14.next())
						{	
							rs14_count+=1;
							out.println("<img src="+rs14.getString(2)+rs14.getString(3)+".png class='cbtn2' id='b"+rs14_count+"'>");
						}
					
			  		%>
			  	 <!--img src="img/header/backhair/backhair1.png" class="cbtn2" id="b1">
			  	 <img src="img/header/backhair/backhair2.png" class="cbtn2" id="b2">
			  	 <img src="img/header/backhair/backhair3.png" class="cbtn2" id="b3">
			  	 <img src="img/header/backhair/backhair4.png" class="cbtn2" id="b4">
			  	 <img src="img/header/backhair/backhair5.png" class="cbtn2" id="b5">
			  	 <img src="img/header/backhair/backhair6.png" class="cbtn2" id="b6">
			  	 <img src="img/header/backhair/backhair7.png" class="cbtn2" id="b7"-->
			  </div></div>
				<div class="dropdown">
				<img src="img/header/backhair/backhair8.png" class="dropbtn" onclick="myFunction(11)">
                <div class="dropdown-content" id="myDropdown11">
                	<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 16 AND 22";
           				ResultSet rs15 =  con.createStatement().executeQuery(sql);
						while(rs15.next())
						{	
							rs15_count+=1;
							out.println("<img src="+rs15.getString(2)+rs15.getString(3)+".png class='cbtn2' id='b"+rs15_count+"'>");
						}
					
			  		%>
			  	 <!--img src="img/header/backhair/backhair8.png" class="cbtn2" id="b8">
			  	 <img src="img/header/backhair/backhair9.png" class="cbtn2" id="b9">
			  	 <img src="img/header/backhair/backhair10.png" class="cbtn2" id="b10">
			  	 <img src="img/header/backhair/backhair11.png" class="cbtn2" id="b11">
			  	 <img src="img/header/backhair/backhair12.png" class="cbtn2" id="b12">
			  	 <img src="img/header/backhair/backhair13.png" class="cbtn2" id="b13">
			  	 <img src="img/header/backhair/backhair14.png" class="cbtn2" id="b14"-->
			  </div></div>
				<div class="dropdown">
				<img src="img/header/backhair/backhair15.png" class="dropbtn" onclick="myFunction(12)">
                <div class="dropdown-content" id="myDropdown12">
                	<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 23 AND 29";
           				ResultSet rs16 =  con.createStatement().executeQuery(sql);
						while(rs16.next())
						{	rs16_count+=1;
							out.println("<img src="+rs16.getString(2)+rs16.getString(3)+".png class='cbtn2' id='b"+rs16_count+"'>");
						}
					
			  		%>
			  	 <!--img src="img/header/backhair/backhair15.png" class="cbtn2" id="b15">
			  	 <img src="img/header/backhair/backhair16.png" class="cbtn2" id="b16">
			  	 <img src="img/header/backhair/backhair17.png" class="cbtn2" id="b17">
			  	 <img src="img/header/backhair/backhair18.png" class="cbtn2" id="b18">
			  	 <img src="img/header/backhair/backhair19.png" class="cbtn2" id="b19">
			  	 <img src="img/header/backhair/backhair20.png" class="cbtn2" id="b20">
			  	 <img src="img/header/backhair/backhair21.png" class="cbtn2" id="b21"-->
			  </div></div>
				<div class="dropdown">
				<img src="img/header/backhair/backhair22.png" class="dropbtn" onclick="myFunction(13)">
                <div class="dropdown-content" id="myDropdown13">
                	<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 30 AND 36";
           				ResultSet rs17 =  con.createStatement().executeQuery(sql);
						while(rs17.next())
						{	
							rs17_count+=1;
							out.println("<img src="+rs17.getString(2)+rs17.getString(3)+".png class='cbtn2' id='b"+rs17_count+"'>");
						}
					
			  		%>
			  	 <!--img src="img/header/backhair/backhair22.png" class="cbtn2" id="b22">
			  	 <img src="img/header/backhair/backhair23.png" class="cbtn2" id="b23">
			  	 <img src="img/header/backhair/backhair24.png" class="cbtn2" id="b24">
			  	 <img src="img/header/backhair/backhair25.png" class="cbtn2" id="b25">
			  	 <img src="img/header/backhair/backhair26.png" class="cbtn2" id="b26">
			  	 <img src="img/header/backhair/backhair27.png" class="cbtn2" id="b27">
			  	 <img src="img/header/backhair/backhair28.png" class="cbtn2" id="b28"-->
			  </div></div>
				<div class="dropdown">
				<img src="img/header/backhair/backhair29.png" class="dropbtn" onclick="myFunction(14)">
                <div class="dropdown-content" id="myDropdown14">
                	<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 37 AND 43";
           				ResultSet rs18 =  con.createStatement().executeQuery(sql);
						while(rs18.next())
						{	
							rs18_count+=1;
							out.println("<img src="+rs18.getString(2)+rs18.getString(3)+".png class='cbtn2' id='b"+rs18_count+"'>");
						}
					
			  		%>
			  	 <!--img src="img/header/backhair/backhair29.png" class="cbtn2" id="b29">
			  	 <img src="img/header/backhair/backhair30.png" class="cbtn2" id="b30">
			  	 <img src="img/header/backhair/backhair31.png" class="cbtn2" id="b31">
			  	 <img src="img/header/backhair/backhair32.png" class="cbtn2" id="b32">
			  	 <img src="img/header/backhair/backhair33.png" class="cbtn2" id="b33">
			  	 <img src="img/header/backhair/backhair34.png" class="cbtn2" id="b34">
			  	 <img src="img/header/backhair/backhair35.png" class="cbtn2" id="b35"-->
			  </div></div>
				<img src="img/cross.png" id="b36" height="72px" style="position:relative; top:50px; margin-left:20px; float:left;">
			</div>
			<div id="tab7" class="tab_content">
				<div class="dropdown">
				<img src="img/header/clothes/clothes1.png" class="dropbtn" onclick="myFunction(15)">
                <div class="dropdown-content" id="myDropdown15">
                	<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 45 AND 51";
           				ResultSet rs19 =  con.createStatement().executeQuery(sql);
						while(rs19.next())
						{	
							rs19_count+=1;
							out.println("<img src="+rs19.getString(2)+rs19.getString(3)+".png class='cbtn2' id='c"+rs19_count+"'>");
						}
					
			  		%>
			  	 <!--img src="img/header/clothes/clothes1.png" class="cbtn2" id="c1">
			  	 <img src="img/header/clothes/clothes2.png" class="cbtn2" id="c2">
			  	 <img src="img/header/clothes/clothes3.png" class="cbtn2" id="c3">
			  	 <img src="img/header/clothes/clothes4.png" class="cbtn2" id="c4">
			  	 <img src="img/header/clothes/clothes5.png" class="cbtn2" id="c5">
			  	 <img src="img/header/clothes/clothes6.png" class="cbtn2" id="c6">
			  	 <img src="img/header/clothes/clothes7.png" class="cbtn2" id="c7"-->
			  </div></div>
				<div class="dropdown">
				<img src="img/header/clothes/clothes8.png" class="dropbtn" onclick="myFunction(16)">
                <div class="dropdown-content" id="myDropdown16">
                	<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 52 AND 57";
           				ResultSet rs20 =  con.createStatement().executeQuery(sql);
						while(rs20.next())
						{	
							rs20_count+=1;
							out.println("<img src="+rs20.getString(2)+rs20.getString(3)+".png class='cbtn2' id='c"+rs20_count+"'>");
						}
					
			  		%>
			  	 <!--img src="img/header/clothes/clothes8.png" class="cbtn2" id="c8">
			  	 <img src="img/header/clothes/clothes9.png" class="cbtn2" id="c9">
			  	 <img src="img/header/clothes/clothes10.png" class="cbtn2" id="c10">
			  	 <img src="img/header/clothes/clothes11.png" class="cbtn2" id="c11">
			  	 <img src="img/header/clothes/clothes12.png" class="cbtn2" id="c12">
			  	 <img src="img/header/clothes/clothes13.png" class="cbtn2" id="c13"-->
			  </div></div>
				<div class="dropdown">
				<img src="img/header/clothes/clothes14.png" class="dropbtn" onclick="myFunction(17)">
                <div class="dropdown-content" id="myDropdown17">
                	<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 58 AND 61";
           				ResultSet rs21 =  con.createStatement().executeQuery(sql);
						while(rs21.next())
						{	
							rs21_count+=1;
							out.println("<img src="+rs21.getString(2)+rs21.getString(3)+".png class='cbtn2' id='c"+rs21_count+"'>");
						}
					
			  		%>
			  	 <!--img src="img/header/clothes/clothes14.png" class="cbtn2" id="c14">
			  	 <img src="img/header/clothes/clothes15.png" class="cbtn2" id="c15">
			  	 <img src="img/header/clothes/clothes16.png" class="cbtn2" id="c16">
			  	 <img src="img/header/clothes/clothes17.png" class="cbtn2" id="c17"-->
			  </div></div>
			  <%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 62 AND 64";
           				ResultSet rs22 =  con.createStatement().executeQuery(sql);
						while(rs22.next())
						{	
							rs22_count+=1;
							out.println("<img src="+rs22.getString(2)+rs22.getString(3)+".png class='cbtn' id='c"+rs22_count+"'>");
						}
					
			  		%>
			  	<!--img src="img/header/clothes/clothes18.png" class="cbtn" id="c18">
				<img src="img/header/clothes/clothes19.png" class="cbtn" id="c19">
				<img src="img/header/clothes/clothes20.png" class="cbtn" id="c20"-->
			</div>
			<div id="tab8" class="tab_content">
				<%
			  			sql="SELECT * FROM `skin` WHERE `imgno` BETWEEN 1 AND 8";
           				ResultSet rs23 =  con.createStatement().executeQuery(sql);
						while(rs23.next())
						{	
							rs23_count+=1;
							out.println("<img src="+rs23.getString(2)+rs23.getString(3)+".png class='cbtn' id='a"+rs23_count+"'>");
						}
					}
			  		%>
				<!--img src="img/header/accessories/accessories1.png" class="cbtn" id="a1">
				<img src="img/header/accessories/accessories2.png" class="cbtn" id="a2">
				<img src="img/header/accessories/accessories3.png" class="cbtn" id="a3">
				<img src="img/header/accessories/accessories4.png" class="cbtn" id="a4">
				<img src="img/header/accessories/accessories5.png" class="cbtn" id="a5">
				<img src="img/header/accessories/accessories6.png" class="cbtn" id="a6">
				<img src="img/header/accessories/accessories7.png" class="cbtn" id="a7"-->
				<img src="img/cross.png" id="a8" height="72px" style="position:relative; top:30px; margin-left:20px;float:left;">		
			</div>
		</div>

		</div>

		<%
          con.close();
      }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec);
		   
    }
}
catch (ClassNotFoundException err) {
      out.println("class錯誤");
}
%>
<script>
$("#finishicon").click(function(){
$(".headersstyle").each(function( x,item ) {
    console.log(item)
	let currPath = item.getAttribute("src")
    var text = currPath.lastIndexOf('/')
    text = currPath.slice(text+1,-4)
    thenum = text.match(/\d+/)[0] 
    let type = text.replace(thenum,"")
    console.log("[Type]:",type);
    console.log("[Number]:",thenum);
    $("#input"+type).attr("value",thenum)
});
$( "#hiddenform" ).submit();
});
</script>

<form action="updateheader.jsp" id="hiddenform" method="post">
<input type="hidden" name="skin" id="inputskin" value=""></input>
<input type="hidden" name="eyes" id="inputeyes" value=""></input>
<input type="hidden" name="eyebrow" id="inputeyebrow" value=""></input>
<input type="hidden" name="mouth" id="inputmouth" value=""></input>
<input type="hidden" name="fronthair" id="inputfronthair" value=""></input>
<input type="hidden" name="backhair" id="inputbackhair" value=""></input>
<input type="hidden" name="clothes" id="inputclothes" value=""></input>
<input type="hidden" name="accessories" id="inputaccessories" value=""></input>
</form>
	</body>
</html>