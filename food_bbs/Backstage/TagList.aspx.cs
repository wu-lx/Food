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
    public partial class tagList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) bindgrid();
        }


        void bindgrid()
        {
            string connStr = ConfigurationManager.AppSettings["ConnString"];
            SqlConnection conn = new SqlConnection(connStr);
            SqlDataAdapter cmd = new SqlDataAdapter("select id,tname from [dbo].[t_tag]", conn);

                DataSet dr = new DataSet();
                conn.Open();
                cmd.Fill(dr, "t_tag");
                tagview.DataSource = dr;
                tagview.DataBind();
                
           
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //设置要显示的页的索引并重新绑定数据
            tagview.PageIndex = e.NewPageIndex;
            bindgrid();
        }


    }
}