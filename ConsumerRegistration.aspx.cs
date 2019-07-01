using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsumerRegistration : System.Web.UI.Page
{
    EncryptionManager em = new EncryptionManager();
    CaptchaGenerator cg = new CaptchaGenerator();
    DBManager dm = new DBManager();

    static string[] CaptchaCodeAndImage = new string[2];
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            CaptchaCodeAndImage = cg.GetRandomCodeAndImage();
            ImgCaptcha.ImageUrl = CaptchaCodeAndImage[1];
        }
    }
    protected void imgbtn_Click(object sender, ImageClickEventArgs e)
    {
        CaptchaCodeAndImage = cg.GetRandomCodeAndImage();
        ImgCaptcha.ImageUrl = CaptchaCodeAndImage[1];
    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        if (TxtEnterCaptcha.Text == CaptchaCodeAndImage[0])
        {
            // code for registration...
            string MyCommand1, Gender = "", Encryptedpasswd;
            if (RdbMale.Checked == true)
            {
                Gender = "Male";
            }
            else
            {
                Gender = "Female";
            }
            Encryptedpasswd = em.EncrptedCode(TxtPasswd.Text);
            MyCommand1 = "insert into Registration values('" + DDLConnection.Text + "','" + TxtName.Text + "','" + Gender + "','" + TxtMobNo.Text + "','" + TxtEmailID.Text + "','" + TxtPAddress.Text + "','" + TxtFile.FileName + "','" + DateTime.Now.ToString() + "')";
            string MyCommand2 = "insert into TblLogin values('" + TxtEmailID.Text + "','" + Encryptedpasswd + "',1,0,'')";
            bool x = dm.ExecuteInsertUpdateOrDelete(MyCommand1);
            if (x == true)
            {
                if (dm.ExecuteInsertUpdateOrDelete(MyCommand2) == true)
                {
                    TxtFile.SaveAs(Server.MapPath("~/UserPics/" + TxtFile.FileName));
                    Response.Write("<script>alert('Your Registration is completed successfully');</script>");
                    Response.Redirect("login.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Your Registration is not completed');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Your Registration is not completed');</script>");
            }
            DDLConnection.Text = "";
            TxtName.Text = "";
            Gender = "";
            TxtMobNo.Text = "";
            TxtEmailID.Text = "";
            TxtPAddress.Text = "";
          }
        else
        {
            Response.Write("<script>alert('Invalid Captcha Code...');</script>");
        }
    }
}