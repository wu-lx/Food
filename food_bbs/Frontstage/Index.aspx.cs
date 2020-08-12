using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace food_bbs.Frontstage
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CurrentUser"] != null)
            {
                btnToLog.Text = "欢迎:&nbsp;&nbsp;" + Session["CurrentUser"].ToString();
                btnToReg.Text = "注销";

                btnToLog.CssClass = "useraccess";
                btnToReg.CssClass = "useraccess";
            }
            else
            {
                btnToLog.CssClass = "linkBtn";
                btnToReg.CssClass = "linkBtn";
                btnToLog.Text = "登录";
                btnToReg.Text = "注册";

            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void Admlog_Click(object sender, EventArgs e)
        {

            Response.Redirect("/Backstage/Admlogin.aspx");
        }


    }
}