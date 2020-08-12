using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace food_bbs.Frontstage
{
    public partial class Register : System.Web.UI.Page
    {
        private bool UserNameIselgal = false;
        private bool PsdIselgal = false;
        private bool CanRegister = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void linkToLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Session["userName"] = rUserNameText.Text;
            Session["password"] = rPsdText.Text;

            string connStr = ConfigurationManager.AppSettings["ConnString"];
            SqlConnection conn = new SqlConnection(connStr);


            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from [dbo].[t_user] where name=@name", conn);
                cmd.Parameters.Add("@name", SqlDbType.Char);
                cmd.Parameters[0].Value = Session["userName"];
                int count = (int)cmd.ExecuteScalar();

                if (count > 0)
                {

                    Response.Write("<script>alert('用户名已存在!')</script>");
                }
                else
                {

                    CanRegister = true;
                }
            }
            catch
            {
                Response.Write("检测重名异常");
            }

            finally
            {
                conn.Close();
            }

            if (CanRegister)
            {
                try
                {
                    conn.Open();
                    string strIns = "insert into  [dbo].[t_user](name, password) values(@name, @password)";
                    SqlCommand cmd = new SqlCommand(strIns, conn);
                    cmd.Parameters.Add("@name", SqlDbType.NChar);
                    cmd.Parameters.Add("@password", SqlDbType.NChar);

                    cmd.Parameters["@name"].Value = Session["userName"];
                    cmd.Parameters["@password"].Value = Session["password"];

                    cmd.ExecuteNonQuery();
                }
                catch
                {
                    Response.Write("注册异常");
                }
                finally
                {
                    conn.Close();

                }
            }
            CanRegister = CanRegister && UserNameIselgal && PsdIselgal;
            if (CanRegister)
            {
                Session["CurrentUser"] = rUserNameText.Text;
                Response.Redirect("Index.aspx");
            }

        }

        protected void CustomValidator1_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            if (rUserNameText.Text.Equals("用户名"))
            {
                CustomValidator1.ErrorMessage = "*用户名为空";
                args.IsValid = false;
            }
            else if (System.Text.RegularExpressions.Regex.IsMatch(rUserNameText.Text, "^[0-9a-zA-Z]+$") &&
                  rUserNameText.Text.Length > 5 && rUserNameText.Text.Length < 11)
            {
                args.IsValid = true;
                UserNameIselgal = true;
            }
            else
            {
                CustomValidator1.ErrorMessage = "*用户名由6~10位数字和字母构成";
                args.IsValid = false;
            }


        }

        protected void CustomValidator2_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            if (rPsdText.Text.Equals("密码"))
            {
                CustomValidator2.ErrorMessage = "*密码为空";
                args.IsValid = false;
            }

            else if (System.Text.RegularExpressions.Regex.IsMatch(rPsdText.Text, "^[0-9a-zA-Z]+$") &&
              rPsdText.Text.Length > 4)
            {
                args.IsValid = true;
            }
            else
            {
                CustomValidator2.ErrorMessage = "*密码由全数字和字母构成且不少于5位";
                args.IsValid = false;
            }
        }

        protected void CustomValidator3_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            if (rrPsdText.Text.Equals("") || rrPsdText.Text.Equals("确认密码"))
            {
                args.IsValid = false;
                CustomValidator3.ErrorMessage = "*确认密码为空";
            }
            else if (!rrPsdText.Text.Equals(rPsdText.Text))
            {
                args.IsValid = false;
                CustomValidator3.ErrorMessage = "*两次密码不一致";
            }
            else
            {
                PsdIselgal = true;
                args.IsValid = true;
            }
        } 

    }
}