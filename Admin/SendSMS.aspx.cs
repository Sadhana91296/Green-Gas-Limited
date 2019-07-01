using System;
using System.Collections.Generic;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_SendSMS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSendSMS_Click(object sender, EventArgs e)
    {
        SMSSender mss = new SMSSender();
        bool x = mss.SendSMS(TxtMobNo.Text, TxtMsg.Text);
        if (x == true)
        {
            TxtMsg.Text = "";
            TxtMobNo.Text = "";
            Response.Write("<script>alert('SMS Sent Successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Unable To Send SMS')</script>");
        }
    }
}