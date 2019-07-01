using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsumerMaster_changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        EncryptionManager em = new EncryptionManager();
        DBManager dm = new DBManager();
        string oldpasswd = em.EncrptedCode(TxtOldPasswd.Text);
        string newpasswd = em.EncrptedCode(TxtNewPasswd.Text);
        string command="update TblLogin set passwd='"+newpasswd+"' where UserID='"+Session["userid"].ToString()+"' and Passwd='"+oldpasswd+"'";
            bool x=dm.ExecuteInsertUpdateOrDelete(command);
        if(x==true)
        {
            Response.Write("<script>alert('Your password is change successfully');</script>");
        }
        else
        {
                 Response.Write("<script>alert('Your password is not change ');</script>");
        }
    }
}