using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class login : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    EncryptionManager em = new EncryptionManager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        string EncryptedPass = em.EncrptedCode(TxtPass.Text);
        string command = "select * From TblLogin where UserID='" + TxtEmail.Text + "' and Passwd='" + EncryptedPass + "'";
       DataTable dt= dm.ExecuteSelect(command);
       if (dt.Rows.Count > 0)
       {
           string cmd = "update TblLogin set LCount = (LCount + 1) , LoginTime = '" + DateTime.Now.ToString() + "' where UserID='" + TxtEmail.Text + "' and Passwd='" + EncryptedPass + "' and Status=true";
           bool x = dm.ExecuteInsertUpdateOrDelete(cmd);
           Session["userid"] = TxtEmail.Text;
           Response.Redirect("~/ConsumerMaster/home.aspx");
       }
       else
       {
            Response.Write("<script>alert('Invalid UserID or Password')</script>");
       
       }

    }
}