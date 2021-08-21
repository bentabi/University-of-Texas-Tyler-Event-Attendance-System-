using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class emp_attendview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["eid"].ToString();
        TextBox1.Enabled = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = Session["eid"].ToString();
        TextBox1.Enabled = false;
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EPA40JE\SQLEXPRESS;Initial Catalog=emp_attendance;Integrated Security=True");
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string s = "select * from attendance where id='" + TextBox1.Text + "'";
        da = new SqlDataAdapter(s, con);
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('No Details of this ID')", true);
        }

    }
}