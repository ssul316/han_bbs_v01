<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
	$(document).ready(function()
	    {
	        /* $("#target").on("click", function ($event) {
	            var target = $($event.target); */
	            
	            var target = $("#target");
	            $.getJSON("list", function (data) {
	                var items = [];
	                $.each(data, function (key, val) {
	                    console.log(key, val);
	                    items.push("<li id='" + key + "'>" + val.bno + " : " + val.title + " : " + val.userid + " : " + val.regdate + " : " + val.vcount + "</li>");
	                });
	                $("<ul/>", {
	                    "class": "line",
	                    html: items.join("")
	                }).appendTo(target);
	            });
	        //});
	    });
</script>
	<h1>된다!!!!</h1>
	<div id="target"></div>
</body>
</html>