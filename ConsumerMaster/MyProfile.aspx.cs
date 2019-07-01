using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class ConsumerMaster_MyProfile : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            DisplayProfile();
            DisableControl();
        }
    }
    public void DisplayProfile()
    {
        string cmd = "select * from Registration where EmailID='" + Session["userid"].ToString() + "'";
        DataTable dt = dm.ExecuteSelect(cmd);
        if (dt.Rows.Count > 0)
        {
            TxtConnectionType.Text=dt.Rows[0][0].ToString();
            TxtName.Text = dt.Rows[0][1].ToString();
            string Gender = dt.Rows[0][2].ToString();
            if (Gender == "Male")
            {
                RdbMale.Checked = true;
            }
            else
            {
                RdbFemale.Checked = true;
            }
            TxtMobNo.Text = dt.Rows[0][3].ToString();
            LblEmail.Text = dt.Rows[0][4].ToString();
            TxtPAddress.Text = dt.Rows[0][5].ToString();
            ImgUser.ImageUrl = "~/UserPics/" + dt.Rows[0][6].ToString();
            LblRegDate.Text = dt.Rows[0][7].ToString();
        }
    }
    public void DisableControl()
    {
        TxtConnectionType.ReadOnly = true;
        TxtName.ReadOnly = true;
        RdbMale.Enabled=false;
        RdbFemale.Enabled = false;
        TxtMobNo.ReadOnly = true;
        TxtPAddress.ReadOnly = true;
        FUPicture.Visible = false;
        BtnUpdate.Visible = false;
        BtnEdit.Visible = true;
    }
    public void EnableControl()
    {
        TxtConnectionType.ReadOnly = false;
        TxtName.ReadOnly = false;
        RdbMale.Enabled=true;
        RdbFemale.Enabled = true;
        TxtMobNo.ReadOnly =false;
        TxtPAddress.ReadOnly = false;
        FUPicture.Visible = true;
        BtnUpdate.Visible = true;
        BtnEdit.Visible = false;
    }
    public void UpdateProfile()
    {
        string Gender="", FileName = "";
        if (RdbMale.Checked == true)
        {
            Gender = "Male";
        }
        else
        {
            Gender = "Female";
        }
        if (FUPicture.HasFile == true)
        {
            FUPicture.SaveAs(Server.MapPath("~/UserPics/" + FUPicture.FileName));
            FileName = FUPicture.FileName;
        }
        else
        {
            string s = ImgUser.ImageUrl;
            FileName = s.Substring(s.LastIndexOf('/')+ 1);
        }
        string MyCommand="update Registration set ConnectionType='"+TxtConnectionType.Text+"', Name='"+TxtName.Text+"', Gender='"+Gender+"', MobileNumber='"+TxtMobNo.Text+"',PostalAddress='"+TxtPAddress.Text+"',ProfilePic='"+FileName+"' Where EmailID='"+Session["userid"].ToString()+"'";
        bool x = dm.ExecuteInsertUpdateOrDelete(MyCommand);
        if (x == true)
        {
            DisplayProfile();
            DisableControl();
            BtnUpdate.Visible = false;
            BtnEdit.Visible = true;
            Response.Write("<script>alert('Your Profile is updated successfully');</script>");
        }
        else
        {
            Response.Write("<script>alert('Your Profile is not updated ');</script>");
        }
    }
    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        EnableControl();
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        UpdateProfile();
    }
}
