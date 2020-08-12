<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="food_bbs.Frontstage.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <style>
   form{
       color:#575454;  
       width:550px;
       margin: auto;
       font-size:15px;
       margin-top:330px;
	}
   #spanpsd{
       margin-left:125px;
       color:black;
   }
   #spanuser{
       margin-left:110px;
        color:black;
   }
   div{
       margin:30px auto;
       align-content:center;
   } 
   .textbox{
       border:solid 1px;
       background:rgba(0, 0, 0, 0);
   }
   #LinkButton1{
       text-decoration:none;
        margin-left:230px;
       
   }
   #Button1{
       border-radius:2px;
       border:solid 1px;
       background-color:transparent;
       margin-left:160px;
       margin-top:10px;
       color:black;
   }
  body{
       background-image: url("./img/login.jpg");
       background-repeat:repeat;
       background-size:960px 454px
        }
  
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <span id="spanuser">用户名:</span>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Height="30px" Width="240px"></asp:TextBox>
        </div>

        <div>
             <span id="spanpsd">密码:</span>
             <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Height="30px" Width="240px" TextMode="Password"></asp:TextBox>
        </div>

        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">没有账号?注册</asp:LinkButton>
            <br />
            <asp:Button ID="Button1" runat="server" Text="登 录" Width="248px" Height="40px" OnClick="Button1_Click" />
        </div>
    </div>
    </form>
</body>
</html>
