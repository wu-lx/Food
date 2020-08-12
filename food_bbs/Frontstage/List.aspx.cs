using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace food_bbs.Frontstage
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.AppSettings["ConnString"];
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("select tid,title,content,face,username from [dbo].[t_topic],[dbo].[t_user] where t_topic.t_u_id = t_user.id", conn);
            try
            {
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                topicList.DataSource = dr;
                topicList.DataBind();
                dr.Close();
            }
            catch { }
            finally
            {
                conn.Close();
            }
        }

        public static string StringTruncat(string oldStr, int maxLength, string endWith)
        {
            if (string.IsNullOrEmpty(oldStr))
                //   throw   new   NullReferenceException( "原字符串不能为空 ");     
                return oldStr + endWith;
            if (maxLength < 1)
                throw new Exception("返回的字符串长度必须大于[0] ");
            if (oldStr.Length > maxLength)
            {
                string strTmp = oldStr.Substring(0, maxLength);
                if (string.IsNullOrEmpty(endWith))
                    return strTmp;
                else
                    return strTmp + endWith;
            }
            return oldStr;
        }

        public void execute(String sql)
        {
            string connStr = ConfigurationManager.AppSettings["ConnString"];
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

       

        
    }
}