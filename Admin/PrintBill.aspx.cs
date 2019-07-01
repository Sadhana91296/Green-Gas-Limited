using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_PrintBill : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            BillNo();
        }

    }
    public void Bill()
    {
        string c = "select * from TblBooking where BillNo='"+TxtBillNo.Text+"'";
        DataTable dt = dm.ExecuteSelect(c);
        if (dt.Rows.Count > 0)
        {
            TxtCName.Text = dt.Rows[0][1].ToString();
            TxtContact.Text = dt.Rows[0][3].ToString();
            TxtAddress.Text = dt.Rows[0][4].ToString();
            TxtConnType.Text = dt.Rows[0][5].ToString();
            TxtWeightOfCylinder.Text = dt.Rows[0][6].ToString();
            TxtRateOfCylinder.Text = dt.Rows[0][7].ToString();
            TxtVATAmount.Text = dt.Rows[0][8].ToString();
            TxtTotalAmount.Text = dt.Rows[0][9].ToString();
            LblCustName.Text = TxtCName.Text;
        }
    }
    protected void BtnGenerate_Click(object sender, EventArgs e)
    {
        string cm = "select * from TblBooking where BillNo='"+ TxtBillNo.Text + "'";
        DataTable d = dm.ExecuteSelect(cm);
        if (d.Rows.Count > 0)
        {
            Bill();
            BtnGenerate.Visible = false;
            TxtBillNo.ReadOnly = true;
        }

    }
    public void BillNo()
    {
        TxtAddress.ReadOnly = true;
        TxtCName.ReadOnly = true;
        TxtConnType.ReadOnly = true;
        TxtRateOfCylinder.ReadOnly = true;
        TxtVATAmount.ReadOnly = true;
        TxtTotalAmount.ReadOnly = true;
        TxtWeightOfCylinder.ReadOnly = true;
        TxtContact.ReadOnly = true;
    }
}