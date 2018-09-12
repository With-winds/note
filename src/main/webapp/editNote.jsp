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
<title>editNote</title>
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
            		<li class="active"><a href="listNote">首页</a></li>
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
            	<h1>editNote</h1>
				<form action="updateNote" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">名称</label>
						<input type="text" name="name" class="form-control" value="${note.name}">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">标签</label>
						<input type="text" name="label" class="form-control" value="${note.label }">
					</div>
					<div class="form-group">
						<textarea name="content"  cols="30" rows="15" 
							class="form-control divCreate">${note.content }
						</textarea>
					</div>
					<input type="hidden" value="${note.id}" name="id">
					<input type="hidden" value="${note.time}" name="time">
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-lg btn-block">
							修改笔记
						</button>
					</div>
				</form>
			</div>
			
			<div class="col-md-3">
            </div>
			
		</div>
		
	</div>
	
</body>
</html>