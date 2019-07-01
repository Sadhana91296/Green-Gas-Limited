using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ConsumerMaster_ConsumerMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            if (Session["userid"] != null)
            {
                string cm = "select Name,ProfilePic from Registration where EmailID='" + Session["userid"] + "'";
                DBManager dm = new DBManager();
                DataTable dt = dm.ExecuteSelect(cm);
                if (dt.Rows.Count > 0)
                {
                    UserName.Text = dt.Rows[0][0].ToString();
                    UserPic.ImageUrl = "../UserPics/" + dt.Rows[0][1];
                }
            }
        }
    }
}
