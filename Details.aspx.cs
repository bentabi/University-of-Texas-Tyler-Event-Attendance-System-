using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EPA40JE\SQLEXPRESS;Initial Catalog=emp_attendance;Integrated Security=True");
        SqlDataAdapter cmd;
        SqlDataReader dr;
        string str = Session["eid"].ToString();
        DataSet ds = new DataSet();
        con.Open();
        string s = "select name,address,mobileno,emailid,department from add_emp where id='" + Session["eid"].ToString() + "' and id='" + str + "'";
        cmd = new SqlDataAdapter(s, con);
        cmd.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            
            TextBox1.Text = Session["eid"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0][0].ToString();

            TextBox3.Text = ds.Tables[0].Rows[0][1].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0][2].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0][3].ToString();
            TextBox6.Text = ds.Tables[0].Rows[0][4].ToString();

        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('No Data for this ID!!!')", true);
        }
        con.Close();
    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}