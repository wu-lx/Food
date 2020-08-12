<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="food_bbs.Backstage.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理</title>
    <style>
*{
    margin: 0;
    padding: 0;
    list-style:none;
    text-decoration:none;
}

body {
	overflow-x: hidden;
    margin-top: -9px;
    background-color:#444444;
}
a:hover {
	text-decoration: none;
}

.topbackground{
    height:80px;
    width:100%;
    background-color:#1e1a1a;
    
}
       
#navigation {
    display: block;
    float: left;
    position: absolute;
    top: 70px;
    width: 220px;
}

#navigation  ul {
	list-style: none;
	margin: 10px 0 0;
	padding: 0;
	position: absolute;
	width: 220px;
}

#navigation ul li {
	display: block;	
	position: relative;
    box-shadow: 0 1px 2px rgba(0,0,0,0.2) inset;
}

#navigation  ul  li  a {
	padding: 10px 0 10px 50px;
	display: block;
	color: #AAAAAA;
    
}

#navigation ul li a .label {
	margin: 0 20px 0 0;
	float: right;
	padding: 3px 5px 2px;
	box-shadow: 0 1px 2px rgba(0,0,0,0.5) inset, 0 1px 0 rgba(255,255,255,0.2);
    background-color:#353434;
}

#navigation ul ul {
	display: none;
	margin: 0;
	padding: 0;
	box-shadow: 0 0 3px rgba(0,0,0,0.5) inset;
}


#navigation  ul li:first-child {
	border-top: 1px solid #353434;
}
#navigation  ul li:last-child  {
	border-bottom: 1px solid #353434;
}


#content {
    background-color:#eeeeee;
    margin-left: 220px;
    margin-right: 220px;
    padding-bottom: 25px;
    position:relative;
    top:-30px;
    min-height: 600px;
    width: auto;
    border-radius: 8px;
}

#content-header {
    height: 80px;
    position: absolute;
    width: 100%;
    margin-top: 23px;
}

#content-header h1 {
    color: #000000;
    font-size: 30px;
    font-weight: normal;
    float: left;
    margin-left: 20px;
    position: absolute;
    font-family:STSong;
}

#separate{
    height:40px;
    width:100%;
    background-color:#e1dddd;
    position:absolute;
    top:80px;
    line-height:40px;
}

#separate a{
    margin-left:40px;
    color:#1e1a1a;
    
}

#welcome{
    height:80px;
    width:100%;
    position:absolute;
    top:250px;
}

#welcome span{
    font-size:45px;
    font-family:FangSong;
    margin-left:50px;
}

#footer{
    height:20px;
    width:1700px;
    position:absolute;
    bottom:10px;
}

#footer span{
    font-size:15px;
    margin-left:660px;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="topbackground">

    </div>

    <div id="navigation">
		<ul>
			<li id="tagLi"><a href="tagList.aspx"><span>标签管理</span></a></li>
			<li id="topicLi"><a href="/backstage/SectionList.aspx"><span>帖子管理</span></a></li>
			<li id="replyLi"><a href="/backstage/TopicListAdmin.aspx"> <span>回复管理</span></a></li>
			<li id="userLi"><a href="/backstage/UserList.aspx"><span>用户管理</span></a></li>
			<li class="submenu"><a href="#">
					<span>系统管理</span> <span class="label">3</span></a>
				<ul>
					<li><a href="#">修改密码</a></li>
					<li><a href="#">安全退出</a></li>
					<li><a href="#">刷新系统缓存</a></li>
				</ul></li>
		</ul>
    </div>
    
    <div id="content">
		<div id="content-header">
			<h1>后台管理</h1>
		</div>
		<div id="separate">
			<a href="main.aspx" title="首页" class="home">首页</a>
		</div>
        <div id="welcome">
            <span>欢迎管理员&nbsp;<%=Session["CurrentUser"].ToString() %>&nbsp;来到为食猫网站后台！</span>
        </div>
		<div id="footer">
            <span>@为食猫美食分享平台</span>
		</div>
	</div> 

    </form>
</body>
</html>
