<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%-- <%@ import="../views/test/test.jsp" %>	 --%>
<!-- 외부파일 참조시 import를 사용한다 -->	
<style>
		.bbs {
			width: 1000px;
			border: 1 solid red;
			border-top: none;
			border-right: none
		}
		
		.bbs ul {
			clear: left;
			margin: 0;
			padding: 0;
			list-style-type: none;
			border-top: 1 solid red;
		}
		/* list-style-type 블릿표시 padding: 0; 들여쓰기*/
		.bbs .subject {
			font-weight: bold;
			text-align: center;
		}
		
		.bbs ul li {
			text-align: center;
			float: left;
			margin: 0;
			padding: 2px, 1px;
			border-right: 1 solid red;
			width: 160px;
		}
		
		.bbs ul .col {
			width: 99px;
		} /* 표 라인 맞추기기 위해*/
		</style>
</head>
<body>
   <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
   <script>
   $(document).ready(function()
       {
           /* $("#target").on("click", function ($event) {
               var target = $($event.target); */
               
               var target = $(".bbs");
               $.getJSON("list", function (data) {
            	   /* "list"부분은 string값이 아닌 JSON데이터를 가져올 대상이다 */
            	   /* 대상은 파일이 될 수도 있고 대개 URL을 넣는다 */
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
           //});
       });
	</script>
	<div class="container">
		<div>
			<h1><strong>한잔해의 자유게시판</strong></h1>
		</div>
		<div class ="bbs">
			<ul>
				<li style="width : 100px">BNO</li>
				<li style="width : 400px">글제목</li>
				<li style="width : 200px">게시자</li>
				<li style="width : 200px">등록일</li>
				<li style="width : 100px">조회수</li>
			</ul>
		</div>
	</div>
</body>
</html>