using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsumerMaster_FeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnFeed_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string c = "insert into FeedBack(UserID,Subject,Message,FDT) values('"+Session["userid"].ToString()+"','" + TxtSubject.Text + "','" + TxtMsg.Text + "','" + DateTime.Now.ToString() + "')";
        bool res=dm.ExecuteInsertUpdateOrDelete(c);
        if (res == true)
        {
            Response.Write("<script>alert('Your Feedback is submitted successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Your Feedback is not submitted ')</script>");
        }
    }
}