<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Top.aspx.cs" Inherits="food_bbs.Frontstage.Top" %>

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

.wrap {
    width:100%;
    height:32px;
    display:block;
    clear:both;
    list-style:none;
    margin: 2px auto;
    font-family:STSong;
    
}

.nav-wrap{
    width:900px;
    height:32px;
    margin: 0 auto;
}

.welcome{
     line-height:42px;
}

#TextBox1{
    background-color:#fbfafa;
    margin:4px 0 0 0;
    border:0;
    font-size:14px;
    
}

#ImgBtn1{
    margin:4px 0 0 0;
}



.nav-l{
    float:left;
    display:block;
}

.nav-r{
    float:right;
     margin: 0 auto;
     line-height:45px;
}

.wrap li{
    float:left;
    font-size:18px; 
    
    color:#5d5b5b;
}

.nav-r a{
    margin:0 6px 0 6px;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrap">
       <div class="nav-wrap">
          <ul class="nav-l">
               <li>
                  <span class="welcome">欢迎来到为食猫美食分享平台 ！</span>
               </li>
               <li>
                   <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Height="30px" Width="250px" Placeholder="&nbsp;&nbsp;寻找美食"></asp:TextBox>
               </li>

               <li>
                   <asp:ImageButton ID="ImgBtn1" runat="server" ImageURL="./img/sousuo.jpg" Height="30px" Width="30px" />
               </li>
          </ul>
           
          <ul class="nav-r">
                    <li>
                        &nbsp; 
                        <asp:LinkButton runat="server" OnClick="Unnamed1_Click" ID="btnToLog" CssClass="linkBtn" Text="登录"></asp:LinkButton>
                        &nbsp;| &nbsp;
                        <asp:LinkButton runat="server" OnClick="Unnamed2_Click" ID="btnToReg" CssClass="linkBtn" Text="注册"></asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton runat="server" OnClick="Unnamed2_Click" ID="btnToAdm" CssClass="linkBtn" Text="后台"></asp:LinkButton>
                    </li>
           </ul>
        </div>
         
    </div>
    </form>
</body>
</html>
