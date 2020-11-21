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
		$("#eyes").attr("src" , "img/header/eyes/eyes0" + num + ".png");
	});
});
	$(function(){	
	$("#tab3 img").click(function(){		
		var num = $(this).attr("id").substr(2);		
		$("#eyebrow").attr("src" , "img/header/eyebrow/eyebrow0" + num + ".png");
	});
});
	$(function(){	
	$("#tab4 img").click(function(){		
		var num = $(this).attr("id").substr(1);		
		$("#mouth").attr("src" , "img/header/mouth/mouth0" + num + ".png");
	});
});
	$(function(){	
	$("#tab5 img").click(function(){		
		var num = $(this).attr("id").substr(1);		
		$("#fronthair").attr("src" , "img/header/front hair/front hair0" + num + ".png");
	});
});
	$(function(){	
	$("#tab6 img").click(function(){		
		var num = $(this).attr("id").substr(1);		
		$("#backhair").attr("src" , "img/header/back hair/back hair0" + num + ".png");
	});
});
	$(function(){	
	$("#tab7 img").click(function(){		
		var num = $(this).attr("id").substr(1);		
		$("#clothes").attr("src" , "img/header/clothes/clothes0" + num + ".png");
	});
});
	$(function(){	
	$("#tab8 img").click(function(){		
		var num = $(this).attr("id").substr(1);		
		$("#accessories").attr("src" , "img/header/accessories/accessories0" + num + ".png");
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


	<div id="backcolor">
	<a href="member.html"><img src="img/back.png" id="backicon"></a>
	<a href="#完成"><img src="img/finish.png" id="finishicon"></a>
	<img src="img/header/skin/skin1.png" id="skin">
	<img src="img/header/eyes/eyes01.png" id="eyes">
	<img src="img/header/eyebrow/eyebrow04.png" id="eyebrow">
	<img src="img/header/mouth/mouth01.png" id="mouth">
	<img src="img/header/front hair/front hair05.png" id="fronthair">
	<img src="img/header/back hair/back hair02.png" id="backhair">
	<img src="img/header/clothes/clothes04.png" id="clothes">
	<img src="img/header/accessories/accessories07.png" id="accessories">
			<div class="abgne_tab">
				<ul class="tabs">
				<li><a href="#tab1"><img src="img/header/skin/skin2.png" class="clickimg"></a></li>
				<li><a href="#tab2"><img src="img/header/eyes/eyes01.png" class="clickimg"></a></li>
				<li><a href="#tab3"><img src="img/header/eyebrow/eyebrow04.png" class="clickimg"></a></li>
				<li><a href="#tab4"><img src="img/header/mouth/mouth01.png" class="clickimg"></a></li>
				<li><a href="#tab5"><img src="img/header/front hair/front hair02.png" class="clickimg"></a></li>
				<li><a href="#tab6"><img src="img/header/back hair/back hair02.png" class="clickimg"></a></li>
				<li><a href="#tab7"><img src="img/header/clothes/clothes01.png" class="clickimg"></a></li>
                <li><a href="#tab8"><img src="img/header/accessories/accessories04.png" class="clickimg"></a></li>
			</ul>
			</div>
			<div class="tab_container">
			<div id="tab1" class="tab_content">
              <img src="img/header/skin/skin1.png" class="cbtn" id="s1">
              <img src="img/header/skin/skin2.png" class="cbtn" id="s2">
              <img src="img/header/skin/skin3.png" class="cbtn" id="s3">
              <img src="img/header/skin/skin4.png" class="cbtn" id="s4">

			</div>
			<div id="tab2" class="tab_content">	
					 
			  <div class="dropdown">
			  <img src="img/header/eyes/eyes01.png" class="dropbtn" onclick="myFunction(1)" height="115px"> 
			  <div class="dropdown-content" id="myDropdown1">
			  	<img src="img/header/eyes/eyes01.png" class="cbtn2" id="e1">
			  	<img src="img/header/eyes/eyes011.png" class="cbtn2" id="e11">
			  	<img src="img/header/eyes/eyes012.png" class="cbtn2" id="e12">
			  	<img src="img/header/eyes/eyes013.png" class="cbtn2" id="e13">
			  	<img src="img/header/eyes/eyes014.png" class="cbtn2" id="e14">
			  	<img src="img/header/eyes/eyes015.png" class="cbtn2" id="e15">
			  	<img src="img/header/eyes/eyes016.png" class="cbtn2" id="e16">
			  </div></div>
			  <img src="img/header/eyes/eyes02.png" class="cbtn" id="e2">
			  <div class="dropdown">
			  <img src="img/header/eyes/eyes03.png" class="dropbtn" onclick="myFunction(2)" height="115px">
              <div class="dropdown-content" id="myDropdown2">
			  	<img src="img/header/eyes/eyes03.png" class="cbtn2" id="e3">
			  	<img src="img/header/eyes/eyes031.png" class="cbtn2" id="e31">
			  	<img src="img/header/eyes/eyes032.png" class="cbtn2" id="e32">
			  	<img src="img/header/eyes/eyes033.png" class="cbtn2" id="e33">
			  	<img src="img/header/eyes/eyes034.png" class="cbtn2" id="e34">
			  </div></div>
			  <div class="dropdown">			  
			  <img src="img/header/eyes/eyes04.png" class="dropbtn" onclick="myFunction(3)" height="115px">
               <div class="dropdown-content" id="myDropdown3">
			  	<img src="img/header/eyes/eyes04.png" class="cbtn2" id="e4">
			  	<img src="img/header/eyes/eyes041.png" class="cbtn2" id="e41">
			  	<img src="img/header/eyes/eyes042.png" class="cbtn2" id="e42">
			  	<img src="img/header/eyes/eyes043.png" class="cbtn2" id="e43">
			  </div></div>
			  <img src="img/header/eyes/eyes05.png" class="cbtn" id="e5">
			  <img src="img/header/eyes/eyes06.png" class="cbtn" id="e6">
			  <img src="img/header/eyes/eyes07.png" class="cbtn" id="e7">
			</div>
			<div id="tab3" class="tab_content">
				<img src="img/header/eyebrow/eyebrow01.png" class="cbtn" id="eb1">
				<img src="img/header/eyebrow/eyebrow02.png" class="cbtn" id="eb2">
				<img src="img/header/eyebrow/eyebrow03.png" class="cbtn" id="eb3">
				<img src="img/header/eyebrow/eyebrow04.png" class="cbtn" id="eb4">
			</div>
			<div id="tab4" class="tab_content">
				<img src="img/header/mouth/mouth01.png" class="cbtn" id="m1">
				<img src="img/header/mouth/mouth02.png" class="cbtn" id="m2">
				<img src="img/header/mouth/mouth03.png" class="cbtn" id="m3">
				<img src="img/header/mouth/mouth04.png" class="cbtn" id="m4">
				<img src="img/header/mouth/mouth05.png" class="cbtn" id="m5">
				<img src="img/header/mouth/mouth06.png" class="cbtn" id="m6">
				<img src="img/header/mouth/mouth07.png" class="cbtn" id="m7">
				<img src="img/header/mouth/mouth08.png" class="cbtn" id="m8">
			</div>
			<div id="tab5" class="tab_content">
				<div class="dropdown">
				<img src="img/header/front hair/front hair01.png" class="dropbtn" onclick="myFunction(4)">
                <div class="dropdown-content" id="myDropdown4">
			  	 <img src="img/header/front hair/front hair01.png" class="cbtn2" id="f1">
			  	 <img src="img/header/front hair/front hair011.png" class="cbtn2" id="f11">
			  	 <img src="img/header/front hair/front hair012.png" class="cbtn2" id="f12">
			  	 <img src="img/header/front hair/front hair013.png" class="cbtn2" id="f13">
			  	 <img src="img/header/front hair/front hair014.png" class="cbtn2" id="f14">
			  	 <img src="img/header/front hair/front hair015.png" class="cbtn2" id="f15">
			  	 <img src="img/header/front hair/front hair016.png" class="cbtn2" id="f16">
			  </div></div>
				<div class="dropdown">
				<img src="img/header/front hair/front hair02.png" class="dropbtn" onclick="myFunction(5)">
                <div class="dropdown-content" id="myDropdown5">
			  	 <img src="img/header/front hair/front hair02.png" class="cbtn2" id="f2">
			  	 <img src="img/header/front hair/front hair021.png" class="cbtn2" id="f21">
			  	 <img src="img/header/front hair/front hair022.png" class="cbtn2" id="f22">
			  	 <img src="img/header/front hair/front hair023.png" class="cbtn2" id="f23">
			  	 <img src="img/header/front hair/front hair024.png" class="cbtn2" id="f24">
			  	 <img src="img/header/front hair/front hair025.png" class="cbtn2" id="f25">
			  	 <img src="img/header/front hair/front hair026.png" class="cbtn2" id="f26">
			  </div></div>
				<div class="dropdown">
				<img src="img/header/front hair/front hair03.png" class="dropbtn" onclick="myFunction(6)">
                <div class="dropdown-content" id="myDropdown6">
			  	 <img src="img/header/front hair/front hair03.png" class="cbtn2" id="f3">
			  	 <img src="img/header/front hair/front hair031.png" class="cbtn2" id="f31">
			  	 <img src="img/header/front hair/front hair032.png" class="cbtn2" id="f32">
			  	 <img src="img/header/front hair/front hair033.png" class="cbtn2" id="f33">
			  	 <img src="img/header/front hair/front hair034.png" class="cbtn2" id="f34">
			  	 <img src="img/header/front hair/front hair035.png" class="cbtn2" id="f35">
			  	 <img src="img/header/front hair/front hair036.png" class="cbtn2" id="f36">
			  </div></div>
				<div class="dropdown">
				<img src="img/header/front hair/front hair04.png" class="dropbtn" onclick="myFunction(7)">
                <div class="dropdown-content" id="myDropdown7">
			  	 <img src="img/header/front hair/front hair04.png" class="cbtn2" id="f4">
			  	 <img src="img/header/front hair/front hair041.png" class="cbtn2" id="f41">
			  	 <img src="img/header/front hair/front hair042.png" class="cbtn2" id="f42">
			  	 <img src="img/header/front hair/front hair043.png" class="cbtn2" id="f43">
			  	 <img src="img/header/front hair/front hair044.png" class="cbtn2" id="f44">
			  	 <img src="img/header/front hair/front hair045.png" class="cbtn2" id="f45">
			  	 <img src="img/header/front hair/front hair046.png" class="cbtn2" id="f46">
			  </div></div>
				<div class="dropdown">
				<img src="img/header/front hair/front hair05.png" class="dropbtn" onclick="myFunction(8)">
                <div class="dropdown-content" id="myDropdown8">
			  	 <img src="img/header/front hair/front hair05.png" class="cbtn2" id="f5">
			  	 <img src="img/header/front hair/front hair051.png" class="cbtn2" id="f51">
			  	 <img src="img/header/front hair/front hair052.png" class="cbtn2" id="f52">
			  </div></div>
				<div class="dropdown">
				<img src="img/header/front hair/front hair06.png" class="dropbtn" onclick="myFunction(9)">
                <div class="dropdown-content" id="myDropdown9">
			  	 <img src="img/header/front hair/front hair06.png" class="cbtn2" id="f6">
			  	 <img src="img/header/front hair/front hair061.png" class="cbtn2" id="f61">
			  	 <img src="img/header/front hair/front hair062.png" class="cbtn2" id="f62">
			  	 <img src="img/header/front hair/front hair063.png" class="cbtn2" id="f63">
			  	 <img src="img/header/front hair/front hair064.png" class="cbtn2" id="f64">
			  	 <img src="img/header/front hair/front hair065.png" class="cbtn2" id="f65">
			  	 <img src="img/header/front hair/front hair066.png" class="cbtn2" id="f66">
			  </div></div>				
			  <img src="img/cross.png" id="f7" height="72px" style="position:absolute; top:10px; margin-left:20px;">
			</div>
			<div id="tab6" class="tab_content">
				<div class="dropdown">
				<img src="img/header/back hair/back hair01.png" class="dropbtn" onclick="myFunction(10)">
                <div class="dropdown-content" id="myDropdown10">
			  	 <img src="img/header/back hair/back hair01.png" class="cbtn2" id="b1">
			  	 <img src="img/header/back hair/back hair011.png" class="cbtn2" id="b11">
			  	 <img src="img/header/back hair/back hair012.png" class="cbtn2" id="b12">
			  	 <img src="img/header/back hair/back hair013.png" class="cbtn2" id="b13">
			  	 <img src="img/header/back hair/back hair014.png" class="cbtn2" id="b14">
			  	 <img src="img/header/back hair/back hair015.png" class="cbtn2" id="b15">
			  	 <img src="img/header/back hair/back hair016.png" class="cbtn2" id="b16">
			  </div></div>
				<div class="dropdown">
				<img src="img/header/back hair/back hair02.png" class="dropbtn" onclick="myFunction(11)">
                <div class="dropdown-content" id="myDropdown11">
			  	 <img src="img/header/back hair/back hair02.png" class="cbtn2" id="b2">
			  	 <img src="img/header/back hair/back hair021.png" class="cbtn2" id="b21">
			  	 <img src="img/header/back hair/back hair022.png" class="cbtn2" id="b22">
			  	 <img src="img/header/back hair/back hair023.png" class="cbtn2" id="b23">
			  	 <img src="img/header/back hair/back hair024.png" class="cbtn2" id="b24">
			  	 <img src="img/header/back hair/back hair025.png" class="cbtn2" id="b25">
			  	 <img src="img/header/back hair/back hair026.png" class="cbtn2" id="b26">
			  </div></div>
				<div class="dropdown">
				<img src="img/header/back hair/back hair03.png" class="dropbtn" onclick="myFunction(12)">
                <div class="dropdown-content" id="myDropdown12">
			  	 <img src="img/header/back hair/back hair03.png" class="cbtn2" id="b3">
			  	 <img src="img/header/back hair/back hair031.png" class="cbtn2" id="b31">
			  	 <img src="img/header/back hair/back hair032.png" class="cbtn2" id="b32">
			  	 <img src="img/header/back hair/back hair033.png" class="cbtn2" id="b33">
			  	 <img src="img/header/back hair/back hair034.png" class="cbtn2" id="b34">
			  	 <img src="img/header/back hair/back hair035.png" class="cbtn2" id="b35">
			  	 <img src="img/header/back hair/back hair036.png" class="cbtn2" id="b36">
			  </div></div>
				<div class="dropdown">
				<img src="img/header/back hair/back hair04.png" class="dropbtn" onclick="myFunction(13)">
                <div class="dropdown-content" id="myDropdown13">
			  	 <img src="img/header/back hair/back hair04.png" class="cbtn2" id="b4">
			  	 <img src="img/header/back hair/back hair041.png" class="cbtn2" id="b41">
			  	 <img src="img/header/back hair/back hair042.png" class="cbtn2" id="b42">
			  	 <img src="img/header/back hair/back hair043.png" class="cbtn2" id="b43">
			  	 <img src="img/header/back hair/back hair044.png" class="cbtn2" id="b44">
			  	 <img src="img/header/back hair/back hair045.png" class="cbtn2" id="b45">
			  	 <img src="img/header/back hair/back hair046.png" class="cbtn2" id="b46">
			  </div></div>
				<div class="dropdown">
				<img src="img/header/back hair/back hair05.png" class="dropbtn" onclick="myFunction(14)">
                <div class="dropdown-content" id="myDropdown14">
			  	 <img src="img/header/back hair/back hair05.png" class="cbtn2" id="b5">
			  	 <img src="img/header/back hair/back hair051.png" class="cbtn2" id="b51">
			  	 <img src="img/header/back hair/back hair052.png" class="cbtn2" id="b52">
			  	 <img src="img/header/back hair/back hair053.png" class="cbtn2" id="b53">
			  	 <img src="img/header/back hair/back hair054.png" class="cbtn2" id="b54">
			  	 <img src="img/header/back hair/back hair055.png" class="cbtn2" id="b55">
			  	 <img src="img/header/back hair/back hair056.png" class="cbtn2" id="b56">
			  </div></div>
				<img src="img/cross.png" id="b6" height="72px" style="position:absolute; top:50px; margin-left:20px;">
			</div>
			<div id="tab7" class="tab_content">
				<div class="dropdown">
				<img src="img/header/clothes/clothes01.png" class="dropbtn" onclick="myFunction(15)">
                <div class="dropdown-content" id="myDropdown15">
			  	 <img src="img/header/clothes/clothes01.png" class="cbtn2" id="c1">
			  	 <img src="img/header/clothes/clothes011.png" class="cbtn2" id="c11">
			  	 <img src="img/header/clothes/clothes012.png" class="cbtn2" id="c12">
			  	 <img src="img/header/clothes/clothes013.png" class="cbtn2" id="c13">
			  	 <img src="img/header/clothes/clothes014.png" class="cbtn2" id="c14">
			  	 <img src="img/header/clothes/clothes015.png" class="cbtn2" id="c15">
			  	 <img src="img/header/clothes/clothes016.png" class="cbtn2" id="c16">
			  </div></div>
				<div class="dropdown">
				<img src="img/header/clothes/clothes02.png" class="dropbtn" onclick="myFunction(16)">
                <div class="dropdown-content" id="myDropdown16">
			  	 <img src="img/header/clothes/clothes02.png" class="cbtn2" id="c2">
			  	 <img src="img/header/clothes/clothes021.png" class="cbtn2" id="c21">
			  	 <img src="img/header/clothes/clothes022.png" class="cbtn2" id="c22">
			  	 <img src="img/header/clothes/clothes023.png" class="cbtn2" id="c23">
			  	 <img src="img/header/clothes/clothes024.png" class="cbtn2" id="c24">
			  	 <img src="img/header/clothes/clothes025.png" class="cbtn2" id="c25">
			  </div></div>
				<div class="dropdown">
				<img src="img/header/clothes/clothes03.png" class="dropbtn" onclick="myFunction(17)">
                <div class="dropdown-content" id="myDropdown17">
			  	 <img src="img/header/clothes/clothes03.png" class="cbtn2" id="c3">
			  	 <img src="img/header/clothes/clothes031.png" class="cbtn2" id="c31">
			  	 <img src="img/header/clothes/clothes032.png" class="cbtn2" id="c32">
			  	 <img src="img/header/clothes/clothes033.png" class="cbtn2" id="c33">
			  </div></div>
			  	<img src="img/header/clothes/clothes04.png" class="cbtn" id="c4">
				<img src="img/header/clothes/clothes05.png" class="cbtn" id="c5">
				<img src="img/header/clothes/clothes06.png" class="cbtn" id="c6">
			</div>
			<div id="tab8" class="tab_content">
				<img src="img/header/accessories/accessories01.png" class="cbtn" id="a1">
				<img src="img/header/accessories/accessories02.png" class="cbtn" id="a2">
				<img src="img/header/accessories/accessories03.png" class="cbtn" id="a3">
				<img src="img/header/accessories/accessories04.png" class="cbtn" id="a4">
				<img src="img/header/accessories/accessories05.png" class="cbtn" id="a5">
				<img src="img/header/accessories/accessories06.png" class="cbtn" id="a6">
				<img src="img/header/accessories/accessories07.png" class="cbtn" id="a7">
				<img src="img/cross.png" id="a8" height="72px" style="position:absolute; top:30px; margin-left:20px;">
			</div>
		</div>

		</div>


	</body>
</html>