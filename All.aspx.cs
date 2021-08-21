using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;

public partial class All : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Calendar1.SelectedDate < Calendar2.SelectedDate)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EPA40JE\SQLEXPRESS;Initial Catalog=emp_attendance;Integrated Security=True");
            SqlDataAdapter da;
            DataSet ds;

            string sql = "Select Id,name from  add_emp ";
            da = new SqlDataAdapter(sql, con);
            ds = new DataSet();
            da.Fill(ds);
            int row = ds.Tables[0].Rows.Count;
            string[] id = new string[row];
            string[] name = new string[row];
            int[] cou = new int[row];

            for (int i = 0; i < row; i++)
            {
                id[i] = ds.Tables[0].Rows[i][0].ToString();
                name[i] = ds.Tables[0].Rows[i][1].ToString();
            }

            for (int i = 0; i < row; i++)
            {
                string s = "select Sum(hour) from Attendance where ID='" + id[i] + "' And Date between '" + Calendar1.SelectedDate.ToShortDateString() + "' and '" + Calendar2.SelectedDate.ToShortDateString() + "'";
                da = new SqlDataAdapter(s, con);
                ds = new DataSet();
                da.Fill(ds);
                string time = ds.Tables[0].Rows[0][0].ToString();
                cou[i] = Convert.ToInt32(time);
            }
            SqlCommand cmd;
            cmd = new SqlCommand("Delete From temp", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            for (int i = 0; i < row; i++)
            {
                cmd = new SqlCommand("Insert into Temp(EId,Name,Hours) values ('" + id[i] + "','" + name[i] + "','" + cou[i] + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            da = new SqlDataAdapter("Select EID,Name,Hours from Temp", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('To Date can not be smaler then From Date')", true);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Xl();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {

    }

    public void Xl()
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-excel";
        using (StringWriter sw = new StringWriter())
        {
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            //To Export all pages
            GridView1.AllowPaging = false;
            GridView1.HeaderRow.BackColor = Color.White;
            foreach (TableCell cell in GridView1.HeaderRow.Cells)
            {
                cell.BackColor = GridView1.HeaderStyle.BackColor;
            }
            foreach (GridViewRow row in GridView1.Rows)
            {
                row.BackColor = Color.White;
                foreach (TableCell cell in row.Cells)
                {
                    if (row.RowIndex % 2 == 0)
                    {
                        cell.BackColor = GridView1.AlternatingRowStyle.BackColor;
                    }
                    else
                    {
                        cell.BackColor = GridView1.RowStyle.BackColor;
                    }
                    cell.CssClass = "textmode";
                }
            }

            GridView1.RenderControl(hw);

            //style to format numbers to string
            string style = @"<style> .textmode { } </style>";
            Response.Write(style);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }
    }
}