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
    public partial class Topic : System.Web.UI.Page
    {
        int a;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                
                ConDisplay();
                ReDisplay();
                ReUser();
            }                                                                   
            
        }

        void ConDisplay()
        {
            string connStr = ConfigurationManager.AppSettings["ConnString"];
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("select content,title,tid from [dbo].[t_topic] where tid = '" + Request["tid"] + "'", conn);

            conn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                this.Label1.Text = dr.GetSqlString(dr.GetOrdinal("title")).ToString();
               
                this.Label3.Text = dr.GetSqlString(dr.GetOrdinal("content")).ToString();
            }
        }

        void ReDisplay()
        {
            string connStr = ConfigurationManager.AppSettings["ConnString"];
            SqlConnection conn = new SqlConnection(connStr);
            SqlDataAdapter cmd = new SqlDataAdapter("select rcontent,rtime,t_u_id from [dbo].[t_reply] where t_t_id = '" + Request["tid"] + "'", conn);

            conn.Open();
            DataSet dr = new DataSet();
            cmd.Fill(dr, "t_reply");
            topicList.DataSource = dr;
            topicList.DataBind();
            
           // a = int.Parse(dr.Tables[0].Rows[0][2].ToString());

            

        }

        void ReUser()
        {
            string connStr = ConfigurationManager.AppSettings["ConnString"];
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cid = new SqlCommand("select username from [dbo].[t_user] where id = '" + a + "'", conn);
            conn.Open();
            SqlDataReader ad = cid.ExecuteReader();
            
            while (ad.Read())
            {
               this.Label4.Text = ad.GetSqlString(ad.GetOrdinal("username")).ToString();
            }
        }
            

        }
    }
