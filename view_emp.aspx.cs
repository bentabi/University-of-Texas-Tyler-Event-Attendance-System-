using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class view_emp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EPA40JE\SQLEXPRESS;Initial Catalog=emp_attendance;Integrated Security=True");
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string s = "select id,name,address,mobileno,emailid from add_emp";
        da = new SqlDataAdapter(s, con);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EPA40JE\SQLEXPRESS;Initial Catalog=emp_attendance;Integrated Security=True");
        SqlDataAdapter da;
        DataSet ds=new DataSet();
        string s = "select id,name,address,mobileno,emailid from add_emp where id='" + TextBox1.Text + "'";
        da= new SqlDataAdapter(s, con);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}