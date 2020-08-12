<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admlogin.aspx.cs" Inherits="food_bbs.Backstage.admlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
   form{
       color:#575454;  
       width:550px;
       margin: auto;
       font-size:18px;
       margin-top:330px;
	}
   #spanpsd{
       margin-left:110px;
       color:white;
   }
   #spanuser{
       margin-left:109px;
        color:white;
   }
   div{
       margin:30px auto;
       align-content:center;
   } 
   .textbox{
       border:solid 1px white;
       background:rgba(0, 0, 0, 0);
   }

   #Button1{
       
       border: 0;
       background-color:transparent;
       font-size:18px;
       margin-left:120px;
       margin-top:10px;
       color:white;
   }
  body{
       background-image: url("./img/01.jpg");
       background-repeat:repeat;
       background-size:1920px 950px
        }
  
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
        <div>
            <span id="spanuser">用户名：</span>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Height="30px" Width="240px"></asp:TextBox>
        </div>

        <div>
             <span id="spanpsd">密&nbsp;&nbsp;&nbsp;码：</span>
             <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Height="30px" Width="243px" TextMode="Password"></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="Button1" runat="server" Text="进入后台" Width="300px" Height="40px" OnClick="Button1_Click"  />
        </div>
    </div>
    </div>
    </form>
</body>
</html>
