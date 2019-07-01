using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnChangePassword_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        EncryptionManager em = new EncryptionManager();
        string CurPasswd = em.EncrptedCode(TxtCurPassword.Text);
        string NewPasswd = em.EncrptedCode(TxtNewPassword.Text);
        string c = "update TblAdminLogin set Passwd='" + NewPasswd + "' where AdminID='" + Session["adminid"].ToString() + "' and Passwd='" + CurPasswd + "'";
        if (dm.ExecuteInsertUpdateOrDelete(c) == true)
        {
            Response.Write("<script>alert('Your Password is Change Successfully.');</script>");
        }
        else
        {
            Response.Write("<script>alert('Your Password is not Change.');</script>");
 
        }

    }
}