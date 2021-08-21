using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class mng_events : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EPA40JE\SQLEXPRESS;Initial Catalog=emp_attendance;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string s = "select * from events";
        da = new SqlDataAdapter(s, con);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
       
    }

    protected void BtnAddEvents_Click(object sender, EventArgs e)
    {

        if (txtentname.Text != "" || txtstrdte.Text != "" || txtenddte.Text != "" || txtdesc.Text != "" || txtloc.Text != "" || txtcon.Text != "")
        {

            string sel = "select top 1 id from events order by id desc";
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
            string s = "insert into events (id,Ename,StartDate,Enddate,Description,Location,Contact) values('" + id + "','" + txtentname.Text + "','" + txtstrdte.Text + "','" + txtenddte.Text + "','" + txtdesc.Text + "','" + txtloc.Text + "','" + txtcon.Text + "')";
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Event Added')", true);
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Fill up the details')", true);
        }

    }
} 