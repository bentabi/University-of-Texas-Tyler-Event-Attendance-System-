using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Attendance : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EPA40JE\SQLEXPRESS;Initial Catalog=emp_attendance;Integrated Security=True");
    SqlCommand cmd;
    string d,d1, intime;
    string outtime,total;
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select Name from add_emp where Id='" + TextBox1.Text + "' ", con);
        con.Open();
        SqlDataReader dr1 = cmd.ExecuteReader();
        if (dr1.HasRows)
        {
            dr1.Read();
            string name = dr1[0].ToString();
            con.Close();

            cmd = new SqlCommand("Select inTime from attendance where Id='" + TextBox1.Text + "' And intime is not NULL And Date='" + DateTime.Now.ToString("yyyy/MM/dd") + "'", con);
            SqlDataReader dr;
            con.Open();
            dr = cmd.ExecuteReader();
            if (!dr.HasRows)
            {
                con.Close();

                cmd = new SqlCommand("insert into attendance (id,date,intime,name) values ('" + TextBox1.Text + "','" + DateTime.Now.ToString("yyyy/MM/dd") + "','" + DateTime.Now.ToString("HH:mm") + "','"+name+"')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Welcome " + name + "!!!')", true);
                TextBox1.Text = "";
            }
            else
            {
                dr.Read();
                DateTime d = Convert.ToDateTime(dr[0].ToString());
                con.Close();
                int inT = d.Hour;
                int outT = DateTime.Now.Hour;
                int dif = outT - inT;
                cmd = new SqlCommand("Update attendance set out='" + DateTime.Now.ToString("HH:mm") + "', Hour=" + dif + " where Id='" + TextBox1.Text + "' And Date='" + DateTime.Now.ToShortDateString() + "' And intime is not NULL", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Good Bye " + name + "!!!')", true);
                TextBox1.Text = "";
            }

        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Invalid Student ID')", true);
            TextBox1.Text = "";
        }
    }
}