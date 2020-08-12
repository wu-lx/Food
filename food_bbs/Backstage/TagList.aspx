<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TagList.aspx.cs" Inherits="food_bbs.Backstage.tagList" %>

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

#addtag{
    height:40px;
    width:100%;
    position:absolute;
    top:130px;
    line-height:40px;
}

#add{
    height:35px;
    width:85px;
    background-color:#2287f7;
    border: solid 2px #2287f7;
    border-radius: 8px;
    margin-left:35px;
    color:white;
    font-size:15px;
}

#tagAdm{
    width:1420px;
    position:absolute;
    top:190px;
    left:30px;
    box-shadow: 0 0 3px #1e1a1a inset;
    background-color:#f9f9f9;
}

#tagAdm span{
    line-height:40px;
    font-size:17px;
    color:#4e4c4c;
}

#tagview{
    width:1416px;
    height:100px;
    font-size:25px;
    position:relative;
    text-align:center;
    left:3px;
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
			<li id="tagLi"><a href="TagList.aspx"><span>标签管理</span></a></li>
			<li id="topicLi"><a href="TopicList.aspx"><span>帖子管理</span></a></li>
			<li id="replyLi"><a href="ReplyListAdmin.aspx"> <span>回复管理</span></a></li>
			<li id="userLi"><a href="UserList.aspx"><span>用户管理</span></a></li>
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
            &nbsp;&nbsp;&nbsp;
            <a href="TagList.aspx" title="标签板块" class="tag">标签管理</a>
		</div>
        <div id="addtag">
            <asp:button ID="add" text="添加标签" runat="server"  />
        </div>
        <div id="tagAdm">
            <span>&nbsp;&nbsp;标签列表</span>
            <asp:GridView ID="tagview" runat="server" AutoGenerateColumns="False" CellPadding="4" 

                        ForeColor="#333333"  GridLines="None"  OnPageIndexChanging="GridView1_PageIndexChanging"
            
                         AllowPaging="true" PageSize="5">

                        <Columns>

                            <asp:CommandField HeaderText="" ShowHeader="true"/>

                            <asp:BoundField DataField="id" HeaderText="编号" ReadOnly="True" />

                            <asp:BoundField DataField="tname" HeaderText="标签名" />

                            <asp:ButtonField buttontype="Button" HeaderText="更新" text="更新" CommandName="Add" />

                            <asp:ButtonField buttontype="Button" HeaderText="删除" text="删除" CommandName="Add" />

                        </Columns>

                        <PagerSettings Mode="NextPrevious" NextPageText="下一页&gt;&gt;" PreviousPageText="&lt;&lt;上一页" />

                        <FooterStyle BackColor="#f9f9f9" Font-Bold="True" ForeColor="White" />
                        
                        <RowStyle Height="55px" ForeColor="#000066" Font-Size="Large" />

                        <SelectedRowStyle BackColor="#669999" Font-Bold="false" ForeColor="White" />

                        <PagerStyle BackColor="#f9f9f9" ForeColor="#000066" HorizontalAlign="Right" Font-Size="Large" />

                        <HeaderStyle BackColor="#eeeeee" Font-Bold="false" ForeColor="DimGray" Font-Size="Large"  />

                    </asp:GridView>
        </div>
		<div id="footer">
            <span>@为食猫美食分享平台</span>
		</div>
	</div> 
    </form>
</body>
</html>
