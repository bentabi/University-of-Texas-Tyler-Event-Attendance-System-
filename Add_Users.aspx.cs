using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add_Users : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EPA40JE\SQLEXPRESS;Initial Catalog=emp_attendance;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AddUser"] == "Added")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('User Added')", true);
            Session["AddUser"] = "";
        }

    }

    protected void BtnAddUsers_Click(object sender, EventArgs e)
    {
        if (txtname.Text != "" || txtadd.Text != "" || txtMob.Text != "" || txtEmail.Text != "" || DDUserType.Text != "")
        {

            string sel = "select top 1 id from Users order by id desc";
            SqlDataAdapter da = new SqlDataAdapter(sel, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int i = ds.Tables[0].Rows.Count;
            int id;
            if (i > 0)
            {
                id = Convert.ToInt32(ds.Tables[0].Rows[0][0]) + 1;
            }
            else
            {
                id = 101;
            }


           


            con.Open();
            SqlCommand cmd;

            string s = "insert into Users (id,Name,Address,Mobile,Email,UserType) values('" + id + "','" + txtname.Text + "','" + txtadd.Text + "','" + txtMob.Text + "','" + txtEmail.Text + "','" + DDUserType.SelectedValue + "')";
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Session["AddUser"] = "Added";
            Response.Redirect("Add_Users.aspx");
            
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Fill up the details')", true);
        }
    }
}