 using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace food_bbs.Backstage
{
    public partial class admlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.AppSettings["ConnString"];
            SqlConnection conn = new SqlConnection(connStr);

            try
            {


                conn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from [dbo].[t_user] where name=@name and password=@password and type=@type", conn);
                cmd.Parameters.Add("@name", SqlDbType.Char);
                cmd.Parameters.Add("@password", SqlDbType.Char);
                cmd.Parameters.Add("@type", SqlDbType.Char);
                cmd.Parameters[0].Value = TextBox1.Text;
                cmd.Parameters[1].Value = TextBox2.Text;
                cmd.Parameters[2].Value = '2';
                int count = (int)cmd.ExecuteScalar();
                if (count == 1)
                {               
                        Session["CurrentUser"] = TextBox1.Text;
                        Response.Redirect("./main.aspx");


                }
                else
                {
                    Response.Write("<script>alert('用户名或密码错误')</script>");
                }
            }
            catch
            {
                Response.Write("<script>alert('登录异常')</script>");
            }

            finally
            {
                conn.Close();
            }

        }

    }
}