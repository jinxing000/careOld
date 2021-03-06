<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<base href="<%=basePath%>">
	<title>Destroydrop &raquo; Javascripts &raquo; Tree</title>

	<link rel="StyleSheet" href="dtree/dtree.css" type="text/css" />
	<script type="text/javascript" src="dtree/dtree.js"></script>
	
</head>

<body>

<h1><a href="/">Destroydrop</a> &raquo; <a href="/javascripts/">Javascripts</a> &raquo; <a href="/javascripts/tree/">Tree</a></h1>

<h2>Example</h2>

<div class="dtree">

	<p><a href="javascript: d.openAll();">open all</a> | <a href="javascript: d.closeAll();">close all</a></p>

	
</div>

<p><a href="mailto&#58;drop&#64;destroydrop&#46;com">&copy;2002-2003 Geir Landr&ouml;</a></p>
<script type="text/javascript">
		d = new dTree('d');
		d.add(0,-1,'My example tree');
		d.add(1,0,'Node 1','example01.html');
		d.add(2,0,'Node 2','example01.html');
		d.add(3,1,'Node 1.1','example01.html');
		d.add(4,0,'Node 3','example01.html');
		d.add(5,3,'Node 1.1.1','example01.html');
		d.add(6,5,'Node 1.1.1.1','example01.html');
		d.add(7,0,'Node 4','example01.html');
		d.add(8,1,'Node 1.2','example01.html');
		d.add(9,0,'My Pictures','example01.html','Pictures I\'ve taken over the years','','','dtree/img/imgfolder.gif');
		d.add(10,9,'The trip to Iceland','example01.html','Pictures of Gullfoss and Geysir');
		d.add(11,9,'Mom\'s birthday','example01.html');
		d.add(12,0,'Recycle Bin','example01.html','','','dtree/img/trash.gif');
		d.add(13,6,'Node 1.1.1.1.1','example01.html','','','dtree/img/trash.gif');
		d.add(14,13,'Node 1.1.1.1.1.1','example01.html','','','dtree/img/trash.gif');
		document.write(d.toString());

	
	</script>
	
</body>

</html>