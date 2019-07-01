using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsumerMaster_Answer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnAnswer_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string c = "insert into TblAnswer(Reviewid,GivenBy,Answer,ADT) values('" + Request.QueryString["Reviewid"].ToString() + "','" + Session["userid"].ToString() + "','" + TxtAnswer.Text + "','" + DateTime.Now.ToString() + "')";
        if (dm.ExecuteInsertUpdateOrDelete(c) == true)
        {
            Response.Write("<script>alert('your Answer is posted ')</script>");
        }
        else
        {
            Response.Write("<script>alert('your Answer is not posted ')</script>");
        }
    }
}