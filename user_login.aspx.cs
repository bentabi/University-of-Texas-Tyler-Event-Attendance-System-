using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class user_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EPA40JE\SQLEXPRESS;Initial Catalog=emp_attendance;Integrated Security=True");
         SqlCommand cmd;
        SqlDataReader dr;
        con.Open();
        string s="select password from add_emp where id='"+TextBox1.Text+"'";
        cmd=new SqlCommand(s,con);
        dr=cmd.ExecuteReader();
        if(dr.HasRows)
        {
            dr.Read();
            if (TextBox2.Text == Convert.ToString(dr[0]))
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Login Successful!!!')", true);
                Session["id"] = "user";
                Session["eid"] = TextBox1.Text;
                Response.Redirect("Details.aspx");
                

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Invalid Password!!!')", true);
            }

        }
        else
        {
        Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Invalid User Id!!!')", true);
        }
        con.Close();
    }
    
    }
