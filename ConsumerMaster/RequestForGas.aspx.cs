using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsumerMaster_RequestForGas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime RequestDate = DateTime.Now;
        DateTime ProcessDate = RequestDate.AddDays(14);
        string MyCommand = "insert into TblGasRequest(CName,ConType,ProcessDate,Weight,ReqDT) values('" + TxtCName.Text + "','" + DDLConType.SelectedValue + "','" + ProcessDate.ToString() + "','" + DDLCWeight.SelectedValue + "','" + RequestDate.ToString() + "')";
        DBManager dm = new DBManager();
        if (dm.ExecuteInsertUpdateOrDelete(MyCommand) == true)
        {
            LblMsg.Text = "Now your Request for Gas Cylinder is Completed but Processing Date is : " + ProcessDate.ToShortDateString() + " and Day is : " + ProcessDate.DayOfWeek + "";
        }
        else
        {
            LblMsg.Text = "Your Request is not completed due to some technical problem,please try again ";
        }
    }
}