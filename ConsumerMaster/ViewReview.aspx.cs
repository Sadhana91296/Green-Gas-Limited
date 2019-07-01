using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsumerMaster_ViewReview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            ViewReviewDetail();
        }
    }
    public void ViewReviewDetail()
    {
        DBManager dm = new DBManager();
        string cmd = "select r.Name,r.ProfilePic,a.Reviewid,a.GivenBy,a.Answer,a.ADT from Registration r,TblAnswer a where r.EmailID='" + Session["userid"].ToString() + "'";
        System.Data.DataTable dt = dm.ExecuteSelect(cmd);
        if (dt.Rows.Count > 0)
        {
            LblName.Text = dt.Rows[0][0].ToString();
            ImgUser.ImageUrl = "~/UserPics/" + dt.Rows[0][1].ToString();
            LblQNo.Text = dt.Rows[0][2].ToString();
            Lbluid.Text = dt.Rows[0][3].ToString();
            LblAnswer.Text = dt.Rows[0][4].ToString();
            LblDate.Text = dt.Rows[0][5].ToString();
        }
    }
}