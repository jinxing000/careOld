<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'dJsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="StyleSheet" href="dtree/dtree.css" type="text/css" />
<script type="text/javascript" src="dtree/dtree.js"></script>
<script type="text/javascript">
	var treeMenu = [

	{
		level : 1,
		name : "用户管理"
	},

	{
		level : 2,
		name : "用户列表",
		ico : "",
		link : "user_list.html"
	},

	{
		level : 2,
		name : "角色管理"
	},

	{
		level : 3,
		name : "角色列表",
		ico : "images/tico_way.gif",
		link : "role_list.html"
	},

	{
		level : 3,
		name : "用户角色",
		ico : "images/tico_way.gif",
		link : "ur_list.html"
	},

	{
		level : 1,
		name : "信息管理"
	},

	{
		level : 2,
		name : "新闻管理",
		ico : "images/tico_way.gif",
		link : "news_list.html"
	},

	{
		level : 2,
		name : "公告管理",
		ico : "images/tico_way.gif",
		link : "bulletin_list.html"
	},

	{
		level : 1,
		name : "系统邮件",
		ico : "images/tico_way.gif"
	},

	{
		level : 1,
		name : "网络文件",
		ico : "images/tico_way.gif",
		link : "disk_list.html"
	} ];
	//建立新树
	tree = new dTree('tree');
	tree.config.target = "MainFrame";
	tree.config.useCookies = false;
	var selNum = -1;
	var link = "";
	//根目录
	tree.add(0, -1, '系统管理中心', null, null, null, '', '');
	var count = 0;
	var pLevelIdArray = new Array();
	pLevelIdArray[1] = 0;
	var currLevel = 1;
	for ( var i = 0; i < treeMenu.length; i++) {

		var item = treeMenu[i];

		var itemLevel = item.level;

		pLevelIdArray[itemLevel + 1] = ++count;

		if (item.link != null && item.link != "") {

			if (item.ico != null) {

				tree.add(count, pLevelIdArray[itemLevel], item.name, item.link,
						null, null, item.ico, item.ico);

			} else {

				tree.add(count, pLevelIdArray[itemLevel], item.name, item.link);

			}

		} else {

			if (item.ico != null) {

				tree.add(count, pLevelIdArray[itemLevel], item.name, null,
						null, null, item.ico, item.ico);

			} else {

				tree.add(count, pLevelIdArray[itemLevel], item.name);

			}

		}

		if (item.select) {

			selNum = count;

			link = item.link;

		}
	}
	document.write(tree);
	tree.openAll();
	if (selNum != -1) {

		tree.openTo(selNum, true);

		top.document.frames["MainFrame"].location.href = link;
	}
</script>

</head>

<body>
	This is my JSP page.
	<br>
</body>
</html>
