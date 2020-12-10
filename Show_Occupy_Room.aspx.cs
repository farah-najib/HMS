using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;


public partial class Show_Occupy_Room : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
       
        masseage.Visible = false;
        err.Visible = false;
      
        string sss = DropDownList1.SelectedItem.Value;
        int n = int.Parse(sss);





        DataClassesDataContext Database = new DataClassesDataContext();
        var Room_Show = from R in Database.Adms

                        join P in Database.Patients
                   on R.Patient_Id equals P.ID_Patient
                        join SS in Database.Rooms
                        on R.Room_No_ equals SS.Room_No_
                        where R.Adm_satats == "Yes" && SS.Floor == n
                        select new { no_room = R.Room_No_, patient_id = P.ID_Patient, patient_name = P.P_NAME + " " + P.P_FATHER_NAME + " " + P.P_SARNAME };
        GridView1.DataSource = Room_Show;

        GridView1.DataBind();

       
         


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

    protected void gvrecords_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes["onmouseover"] = "javascript:SetMouseOver(this)";
            e.Row.Attributes["onmouseout"] = "javascript:SetMouseOut(this)";
        }
    }





     protected void select()
    {

        Session["idss"] = GridView1.SelectedRow.Cells[2].Text; 
        Session["roomno"] = GridView1.SelectedRow.Cells[1].Text; 
        Session["pname"] = GridView1.SelectedRow.Cells[3].Text; 
                
    }
    protected void Log_Out_Click(object sender, ImageClickEventArgs e)
     {
         if (GridView1.Rows.Count > 0 && GridView1.SelectedIndex != -1)
         {
             if (Session["Role"] == "Doctor")
                  {
             select();
             Response.Redirect("~/Log_Out_From_Room.aspx");
                  }
             else
             {
                 err.Visible = true;
             }

         }
         else
         {  
             masseage.Visible = true; 
         }
    }

    protected void Order_PH_Click(object sender, ImageClickEventArgs e)
    {
        if (GridView1.Rows.Count > 0 && GridView1.SelectedIndex != -1)
        {
            if (Session["Role"] == "Management")
            {
                select();
                Response.Redirect("~/PH_order.aspx");

            }
            else
            {
                err.Visible = true;
            }
           
        }
        else
        {
            masseage.Visible = true;
        }
       

        
    }
  
   
    protected void Shiftbutton_Click(object sender, ImageClickEventArgs e)
    {
        if (GridView1.Rows.Count > 0 && GridView1.SelectedIndex != -1)
        {
            if (Session["Role"] == "Management")
            {
                select();
                Response.Redirect("~/RShift.aspx");

            }
            else
            {
                err.Visible = true;
            }
           
        }
        else
        {
            masseage.Visible = true;
        }

    }
    protected void Lab_order_Click(object sender, ImageClickEventArgs e)
    {
        if (GridView1.Rows.Count > 0 && GridView1.SelectedIndex != -1)
        {
            if (Session["Role"] == "Doctor")
            {
                select();
                Response.Redirect("~/Ord_Lab.aspx");

            }
            else
            {
                err.Visible = true;
            }
            
        }
        else
        {
            masseage.Visible = true;
        }
    }
    protected void gotohome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Shearch_Patient.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Showing_ beds_ unoccupied.aspx");
    }
    protected void BMI_Button_Click(object sender, ImageClickEventArgs e)
    {
        if (GridView1.Rows.Count > 0 && GridView1.SelectedIndex != -1)
        {
            if (Session["Role"] == "Doctor")
            {
        select();
        Response.Redirect("~/BMI.aspx");
            }
            else
            {
                err.Visible = true;
            }

        }
        else
        {
            masseage.Visible = true;
        }
    }
    protected void Abl_Click(object sender, ImageClickEventArgs e)
    {
        if (GridView1.Rows.Count > 0 && GridView1.SelectedIndex != -1)
        {
            if (Session["Role"] == "Doctor")
            {
                select();
                Response.Redirect("~/ABL.aspx");
            }
            else
            {
                err.Visible = true;
            }

        }
        else
        {
            masseage.Visible = true;
        }
    }
}