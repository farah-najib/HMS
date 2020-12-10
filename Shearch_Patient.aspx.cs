using System;
using System.Collections.Generic;
using System.Data.Linq.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shearch_Patient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        uuuuuser.Text = Session["UserName"].ToString();
        Label3.Visible = false;
        
       

    }
   
   



    protected void OnSelectedIndexChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowIndex == GridView1.SelectedIndex)
            {
                row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
            }
            else
            {
                row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
            }
        }
    }


   
    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        if (GridView1.Rows.Count > 0 && GridView1.SelectedIndex != -1)
        {
            
            Session["ppid"] = GridView1.SelectedRow.Cells[1].Text;
            Session["ppname"] = GridView1.SelectedRow.Cells[2].Text;
            Response.Redirect("~/Admission .aspx");
        }

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Session["idemp"] = Session["UserName"].ToString();
        Response.Redirect("~/Patient1.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        DataClassesDataContext Database = new DataClassesDataContext();

        var Result = from Record in Database.Patients
                     where SqlMethods.Like(Record.P_NAME, "%" + Name.Text + "%") && SqlMethods.Like(Record.P_FATHER_NAME, "%" + FatherName.Text + "%") && SqlMethods.Like(Record.P_SARNAME, "%" + LastName.Text + "%") && SqlMethods.Like(Record.P_MOTHER_NAME___TITLE, "%" + Mother.Text + "%")
                     select new { id = Record.ID_Patient, n = Record.P_NAME + " " + Record.P_FATHER_NAME + " " + Record.P_SARNAME, m = Record.P_MOTHER_NAME___TITLE };
        if (Result.Any())
        {
           
              GridView1.DataSource = Result;
              GridView1.DataBind();
        }
        else
        {
            Label3.Visible = true;
            GridView1.Visible = false;
        }
      
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
        Response.Redirect("~/Home.aspx");
    }
    protected void Vendor_Click(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count > 0 && GridView1.SelectedIndex != -1)
        {
            

            Session["idss"] = GridView1.SelectedRow.Cells[1].Text;
            Session["pname"] = GridView1.SelectedRow.Cells[2].Text;
            Response.Redirect("~/Ord_Lab.aspx");
        }
    }
}