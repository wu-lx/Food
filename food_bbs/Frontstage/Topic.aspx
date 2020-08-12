<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Topic.aspx.cs" Inherits="food_bbs.Frontstage.Topic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
*{
    margin: 0;
    padding: 0;
    list-style:none;
    text-decoration:none;
}

.top-pic{
    width:1200px;
    height:240px;
    margin:0 auto;
}

.pic{
    width:1200px;
    height:200px;   
}

#content{
    width:1100px;
    min-height:600px;
    margin:auto;
    border:1px solid #f1eded;
    display:block;
}

#Label1{
    font-size:35px;
    font-family:STSong;
    font-weight:700;
    line-height:70px;
    margin-left:460px;
    letter-spacing:15px;
}

#Label3{
    font-size:25px;
    line-height:50px;
    margin-left:55px;
    font-weight:500;
    font-family:STSong;
}

#comment{
     width:1100px;
     margin-top:30px;
     margin-left:410px;

}

.redisply{
    height:50px;
    font-size:20px;
    font-family:STSong;
    line-height:50px;
    border:2px solid #f1eded;

}
    
.rcontent{
    position:relative;
    float:left;
}

.rtime{
    position:relative;
    float:right;
}

#rebox{
    height:400px;
    margin-top:20px;
}

#TexBox1{
    font-size:18px;
    font-family:STSong;

}

#btn1{
    font-size:20px;
    font-family:STSong;


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
        <div id="content">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </div>
        <div id="comment">
            <ul class="article">

                <asp:Label runat="server" ID="Label4" Text=""></asp:Label>
                <asp:Repeater ID="topicList" runat="server">
                   <ItemTemplate>
                      <li class="redisply">
                        
                          &nbsp;&nbsp;&nbsp;
                        <span class="rcontent">
                            <%# Eval("rcontent") %>
                        </span>

                        <span class="rtime">
                            <%# Eval("rtime") %>
                        </span>
                     </li>
                  </ItemTemplate>
               </asp:Repeater>
            </ul>

            <div id="rebox">
                <asp:TextBox ID="TexBox1" runat="server" Text="请输入回复内容" 
                    TextMode="MultiLine" Columns="135" Rows="10" MaxLength="100">
                </asp:TextBox><br />
                <asp:Button ID="btn1" runat="server" Text="确定" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
