<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<title>createNote</title>
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
            	<h1>createNote</h1>
				<form action="addNote" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">名称</label>
						<input type="text" name="name" class="form-control" placeholder="Name">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">标签</label>
						<input type="text" name="label" class="form-control" placeholder="Label">
					</div>
					<div class="form-group">
						<textarea name="content" placeholder="输入内容"  cols="30" rows="15" 
							class="form-control divCreate">输入内容
						</textarea>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-lg btn-block">
							创建笔记
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