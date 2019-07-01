using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class ConsumerMaster_BookingStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cmd = "select * from TblBooking where BillNo='" + TxtBooking.Text + "'";
        DBManager dm = new DBManager();
        DataTable dt = dm.ExecuteSelect(cmd);
        Grid1.DataSource = dt;
        Grid1.DataBind();
        TxtBooking.Text = "";

    }
}