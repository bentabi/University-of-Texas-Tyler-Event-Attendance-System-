using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckUsers : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EPA40JE\SQLEXPRESS;Initial Catalog=emp_attendance;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnScan_Click(object sender, EventArgs e)
    {
        if(txtScanId.Text != "")
        {
            string sel = "Select * from Users where id = '" + txtScanId.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sel, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int i = ds.Tables[0].Rows.Count;
            if (i > 0)
            {
                txtname.Text = ds.Tables[0].Rows[0][0].ToString();
                txtadd.Text = ds.Tables[0].Rows[0][1].ToString();
                txtMob.Text = ds.Tables[0].Rows[0][2].ToString();
                txtEmail.Text = ds.Tables[0].Rows[0][3].ToString();
                txtUserType.Text = ds.Tables[0].Rows[0][4].ToString();
                PanelDetails.Visible = true;
            }
            else
            {
                PanelDetails.Visible = false;
                txtname.Text = "";
                txtadd.Text = "";
                txtMob.Text = "";
                txtEmail.Text = "";
                txtUserType.Text = "";
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('No Details Find')", true);
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Kindly enter ID')", true);
        }
       

    }
}
