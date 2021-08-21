using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System;
using System.Drawing;
using System.IO;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EPA40JE\SQLEXPRESS;Initial Catalog=emp_attendance;Integrated Security=True");
        con.Open();
        SqlCommand cmd;
        string s = "select top 1 id from add_emp order  by id desc";  
        cmd = new SqlCommand(s, con);
        object count = cmd.ExecuteScalar();
        int c = Convert.ToInt32(count);
        if (count != null)
        {
            c = c + 1;
            TextBox1.Text = Convert.ToString(c);
        }
        else
        {
            TextBox1.Text = "101";
        }
        con.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Fill up the details')", true);
        }
        else
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EPA40JE\SQLEXPRESS;Initial Catalog=emp_attendance;Integrated Security=True");
            con.Open();
            SqlCommand cmd;
            string s = "insert into add_emp values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Data Inserted')", true);
        }
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
    }
}