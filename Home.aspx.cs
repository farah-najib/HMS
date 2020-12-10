using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    DataClassesDataContext Database = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null && Session["Role"] == null)
        {
            Response.Redirect("~/Log_In.aspx");
            
        }
        else
        {
            string Usr_name = Session["UserName"].ToString();

            var Name_emp = (from L in Database.UserTables
                            join ee in Database.Employees
                           on L.EM_ID equals ee.E_ID
                            where L.UserName == Usr_name
                            select ee.E_NAME + " " + ee.E_FATHER_NAME + " " + ee.E_SARNAME).Single().ToString();
            Label3.Text = Name_emp;
        }


    }

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
      
        if (Session["Role"] == "Management")
        {
            
            Response.Redirect("~/Shearch_Patient.aspx");
            
        }
        else
        {
            err.Visible = true;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (Session["Role"] == "Doctor" || Session["Role"] == "Management")
        {
            
            Response.Redirect("~/Show_Occupy_Room.aspx");

        }
        else
        {
            err.Visible = true;
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        if (Session["Role"] == "Management")
        {
            Response.Redirect("~/AdminPh.aspx");

        }
        else
        {
            err.Visible = true;
        }
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        if (Session["Role"] == "Doctor")
        {
            Response.Redirect("~/BMI.aspx");

        }
        else
        {
            err.Visible = true;
        }
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        if (Session["Role"] == "Doctor")
        {
            Response.Redirect("~/ABL.aspx");

        }
        else
        {
            err.Visible = true;
        }
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        if (Session["Role"] == "Doctor")
        {
            Response.Redirect("~/CBC_Test.aspx");

        }
        else
        {
            err.Visible = true;
        }

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        
             if (Session["Role"] == "Management")
        {
            Response.Redirect("~/OrderPha.aspx");

        }
        else
        {
            err.Visible = true;
        }
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        if (Session["Role"] == "Lab Assistant")
        {
            Response.Redirect("~/lab_show_order.aspx");

        }
        else
        {
            err.Visible = true;
        }

    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        if (Session["Role"] == "Management")
        {
            Response.Redirect("~/Employ1.aspx");

        }
        else
        {
            err.Visible = true;
        }
    }
   
    protected void unocc_Click(object sender, EventArgs e)
    {
        if (Session["Role"] == "Management")
        {
            Response.Redirect("~/Showing_ beds_ unoccupied.aspx");

        }
        else
        {
            err.Visible = true;
        }
    }

    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Session["Role"] = null ;
        Session["UserName"] = null;
        Response.Redirect("~/Log_In.aspx");
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        if (Session["Role"] == "Doctor")
        {
            Response.Redirect("~/Blood_Group_Test.aspx");

        }
        else
        {
            err.Visible = true;
        }
    }
    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        if (Session["Role"] == "Doctor")
        {
            Response.Redirect("~/Biochemistry.aspx");

        }
        else
        {
            err.Visible = true;
        }
    }
}