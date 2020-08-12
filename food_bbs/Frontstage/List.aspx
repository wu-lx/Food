<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="food_bbs.Frontstage.List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>为食猫</title>
    <style>
*{
    margin: 0;
    padding: 0;
    list-style:none;
    text-decoration:none;
}

.top-pic{
    width:1200px;
    height:270px;
    margin:0 auto;
}

.pic{
    width:1200px;
    height:200px;   
}

.classfy-nav{
    width:140px;
    height:423px;
    float:left;
    position:relative;
    left:360px;
    border: 2px solid #d0c9c9;
    border-radius:7px;
    border-bottom:none;
    

}

.classfy-nav li{
    height:45px;
    width:140px;
    border-bottom:2px solid #d0c9c9;
    font-size:28px;
    text-align:center;
    line-height:42px;  
    font-family:STKaiti;
    
}

.maincontent{
    width:700px;
    min-height:600px;
    position:absolute;
    left:600px;
}

#postbtn{
    width:90px;
    height:35px;
    position:relative;
    margin-left:810px;
    font-size:20px;
    font-family:STSong;
    background-color:#46b0c8;
    border: solid 2px #46b0c8;
    border-radius: 8px;
    color:white;
}

.maincontent li{
    height:145px;
    width:900px;
    margin-top:20px;
    margin-bottom:20px;
    border-bottom:3px solid #f3f3f3;

}

.artitle{
    height:30px;
    font-size:25px;
    color:black;
    font-weight:800;
    font-family:STSong;
}

.arcontent{
    margin-top:25px;
    font-size:17px;
    font-weight:200;
}

.author{
    margin-top:25px;
    font-size:17px;
    color:black;
    font-weight:400;
}

.comment{
    width:35px;
    height:29px;
    position:relative;
    float:right;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="header" class="wrap" style="width: 1200px; margin: 0 auto;">
            <% Server.Execute("Top.aspx"); %>
        </div>

        <div class="top-pic">
            <img class="pic" src="./img/tpic.jpg" />
        </div>

        <div class="classfy-nav">
                <ul>
                    <li>
                        <asp:LinkButton ID="AllBtn" runat="server" CssClass="navigationBtn" >全部</asp:LinkButton>
                        
                    </li>
                    <li>
                        <asp:LinkButton ID="CfoodBtn" runat="server" CssClass="navigationBtn">中餐</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="WfoodBtn" runat="server"  CssClass="navigationBtn">西餐</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="dessertBtn" runat="server" CssClass="navigationBtn">甜品</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="SnackBtn" runat="server"  CssClass="navigationBtn">小吃</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="BreadBtn" runat="server"  CssClass="navigationBtn">包点</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="DrinkBtn" runat="server"  CssClass="navigationBtn">饮品</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="FruitBtn" runat="server"  CssClass="navigationBtn">水果</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="OtherButton1" runat="server"  CssClass="navigationBtn">其它</asp:LinkButton>
                    </li>
                </ul>
        </div>
        <div class="maincontent">
                <asp:Button ID="postbtn" runat="server" text="发表帖子"/>
                <ul class="article">
                    <asp:Repeater ID="topicList" runat="server">
                    <ItemTemplate>
                    <li><a href="Topic.aspx?tid=<%# Eval("tid")%>" class="artitle">
                            <%# Eval("title")%>
                        </a><br /> <br />
                        <span class="arcontent">
                            <%# StringTruncat(Eval("content").ToString(),50,"...") %>
                        </span><br /><br />
                        <a href="#" class="author">作者：<%# Eval("username") %></a>
                        <image class="comment"src="./img/comment.jpg"></image>
                    </li>
                    </ItemTemplate>
                    </asp:Repeater>
                    </ul>
        </div>

        <div>

        </div>
    </div>
    </form>
</body>
</html>
