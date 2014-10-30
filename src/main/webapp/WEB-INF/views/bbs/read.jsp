<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${read.title}</title>
      <style>
         .reply {width: 1000px; border:1 solid red;border-top:none;border-right:none}
         .reply ul {clear: left;margin: 0;padding: 0;list-style-type: none;border-top:1 solid red;} 
         /* list-style-type 블릿표시 padding: 0; 들여쓰기*/
         .reply .subject {font-weight: bold;text-align: center;}
         .reply ul li {text-align: center;float: left;margin: 0;padding: 2px, 1px;border-right:1 solid red;width: 160px;}
         .reply ul .col {width: 99px;} /* 표 라인 맞추기기 위해*/
      </style>
</head>
<body>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
   $(document).ready(function()
       {
			var target = $(".reply");
			$.getJSON("list", function (data) {
			    var items = [];
			    
			    $.each(data, function (key, val) {
			        console.log(key, val);
			        items.push("<ul id='" + key + "'>"+("<li style=\"width : 100px\">"+val.bno+"</li>")+("<li style=\"width : 400px\"><a href='read?bno="+val.bno+"'>"+val.title+"</a></li>")+("<li style=\"width : 200px\">"+val.userid+"</li>")+("<li style=\"width : 200px\">"+val.regdate+"</li>")+("<li style=\"width : 100px\">"+val.vcount+"</li>")+"</ul>")
			        
			    });
			    $("<div/>", {
			        "class": "line",
			        html: items.join("")
			    }).appendTo(target);
			});
       });
	</script>
	<h1>${read.title}</h1>
	<h3>${read.userid}&nbsp; &nbsp; ${read.regdate}</h3>
	<br>
	<h3>${read.cont}</h3>
	<br><br>
	<div>
		덧글쓰셈
		<input id="inputReply" type="text">
		<input type="submit">
	</div>
	<div class="reply"></div>
	
</body>
</html>