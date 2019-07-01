using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        EncryptionManager em=new EncryptionManager();
        DBManager dm = new DBManager();
        string epass=em.EncrptedCode(TxtPasswd.Text);
        string c = "select * from TblAdminLogin where AdminID='" + TxtEmail.Text + "' and Passwd='" + epass + "'";
        DataTable dt = dm.ExecuteSelect(c);
        if (dt.Rows.Count > 0)
        {
            string cm = "update TblAdminLogin set Lcount=(Lcount+1), LoginTime='" + DateTime.Now.ToString() + "' where AdminID='" + TxtEmail.Text + "' and Passwd='" + epass + "' and Status=true";
            bool x = dm.ExecuteInsertUpdateOrDelete(cm);
            Session["adminid"] = TxtEmail.Text;
            Response.Redirect("~/Admin/Home.aspx");
        }
        else
        {
            Response.Write("<script>alert('Your ID or Password is invalid');</script>");
        }
    }
}