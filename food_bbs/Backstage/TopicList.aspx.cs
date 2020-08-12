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
    public partial class TopicList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.AppSettings["ConnString"];
            SqlConnection conn = new SqlConnection(connStr);
            if (!IsPostBack) {
                
                SqlDataAdapter da = new SqlDataAdapter("select id,tname from [dbo].[t_tag]", conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                conn.Close();
                tag.DataSource = ds.Tables[0];
                tag.DataTextField = "tname";
                tag.DataValueField = "id";
                tag.DataBind(); 
            }

            SqlDataAdapter cmd = new SqlDataAdapter("select id,title,tname,username from [dbo].[t_topic],[dbo].[t_user],[dbo].[t_tag] where t_topic.t_l_id = t_tag.id , t_topic.t_u_id = t_user.id", conn);
            
                
             
        }


        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)        {        }        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)        {        }        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)        {        }        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)        {        }



    }
}