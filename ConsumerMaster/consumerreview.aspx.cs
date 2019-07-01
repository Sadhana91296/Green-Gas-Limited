using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsumerMaster_consumerreview : System.Web.UI.Page
{
    DBManager dm = new DBManager();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            getData();
        }
    }
    public void getData()
    {
        string c = "select * from TblReview where userid='" + Session["userid"].ToString() + "'";
        System.Data.DataTable dt = dm.ExecuteSelect(c);
        GV.DataSource = dt;
        GV.DataBind();
    }
    protected void BtnPostReview_Click(object sender, EventArgs e)
    {
        string cm = "insert into TblReview(userid,topic,message,ReviewDT) values('" + Session["userid"]+ "','"+TxtTopic.Text+"','"+TxtMessage.Text+"','"+DateTime.Now+"')";
      
       bool b= dm.ExecuteInsertUpdateOrDelete(cm);
       if (b == true)
       {
           TxtMessage.Text = "";
           TxtTopic.Text = "";
           Response.Write("<script>alert('Post submitted successfully');</script>");
       }
       else
       {
           Response.Write("<script>alert('Unable To Submitted Post');</script>");
       }
    }
}