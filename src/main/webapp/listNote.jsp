<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<title>listNote</title>
</head>
<body>
	
	<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
		<div class="container">
			<div class="navbar-header">
      			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#demo-navbar" aria-expanded="false">
	      			<span class="sr-only">Toggle navigation</span>
	        		<span class="icon-bar"></span>
	        		<span class="icon-bar"></span>
	        		<span class="icon-bar"></span>
      			</button>
      			<a class="navbar-brand" href="#">NOTE</a>
    		</div>
    		
    		<div class="collapse navbar-collapse" id="demo-navbar">
            	<ul class="nav navbar-nav">
            		<li class="active"><a href="#">首页</a></li>
            		<li><a href="createNote">创建笔记</a></li>
            		<li><a href="#">注册</a></li>
            		<li><a href="#">登录</a></li>
            	</ul>
            	<form class="navbar-form navbar-right">
       				<div class="form-group">
          				<input type="text" class="form-control" placeholder="Search">
       				</div>
        			<button type="submit" class="btn btn-primary">Submit</button>
      			</form>
            </div>
    		
		</div>
	</nav>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3">
            </div>
            
            <div class="col-md-6">
				<h1>listNote</h1>
				<table class="table table-striped table-hover">
					<tr>
						<th>序号</th>
						<th>名称</th>
						<th>日期</th>
						<th>标签</th>
						<th>查看</th>
						<th>编辑</th>
						<th>删除</th>
					</tr>
					<c:forEach items="${notes}" var="n">
						<tr>
							<td>${n.id }</td>
							<td>${n.name }</td>
							<td>${n.time }</td>
							<td>${n.label }</td>
							<td><a href="readNote?id=${n.id }">查看</a></td>
							<td><a href="editNote?id=${n.id }">编辑</a></td>
							<td><a href="deleteNote?id=${n.id }">删除</a></td>
						</tr>
					</c:forEach>
				</table>
				
			</div>
			
			<div class="col-md-3">
            </div>
						
		</div>
		
	</div>
	
</body>
</html>