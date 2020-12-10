using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lab_show_order : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    DataClassesDataContext Database = new DataClassesDataContext();
    void grid()
    {
        DateTime RequetDate = Calendar1.SelectedDate;

        DataClassesDataContext Database = new DataClassesDataContext();
        var Lab_Show = from R in Database.Orders
                       join P in Database.Patients
                   on R.P_ID equals P.ID_Patient
                       join SS in Database.Test_Names
                       on R.Test_ID equals SS.ID_Test
                       where R.Rq_Date == RequetDate
                       select new { no_Order = R.OrderNO, patient_name = P.P_NAME + " " + P.P_FATHER_NAME + " " + P.P_SARNAME, test_name = SS.Test_Name1, test_date = R.Test_Date, stat = R.O_Status };

        GridView1.DataSource = Lab_Show;
        GridView1.DataBind();
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        grid();
    }
    protected void select()
    {

       int oint = int.Parse( GridView1.SelectedRow.Cells[1].Text);
       var Patient_id = (from R in Database.Orders
                      join P in Database.Patients
                  on R.P_ID equals P.ID_Patient
                      where R.OrderNO == oint
                      select P.ID_Patient).Single().ToString();
       Session["idpatient"] = Patient_id;

    }
       
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        if (GridView1.Rows.Count > 0 && GridView1.SelectedIndex != -1)
        {
            if (GridView1.SelectedRow.Cells[5].Text == "Request")
            {
                int ord = int.Parse(GridView1.SelectedRow.Cells[1].Text);
                Order editorder = Database.Orders.Single(o => o.OrderNO == ord);

                editorder.O_Status = "In achievement";
                Database.SubmitChanges();
                grid();
            }
            else
            { }
        }
        else
        {
  

        }



    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (GridView1.Rows.Count > 0 && GridView1.SelectedIndex != -1)
        {
            if (GridView1.SelectedRow.Cells[5].Text == "Request")
            {
                int ord = int.Parse(GridView1.SelectedRow.Cells[1].Text);
                Order editorder = Database.Orders.Single(o => o.OrderNO == ord);

                editorder.O_Status = "Undo Order";
                Database.SubmitChanges();
                grid();
            }
            else 
            { }
        }
        else
        {




        }

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (GridView1.Rows.Count > 0 && GridView1.SelectedIndex != -1)
        {
            if (GridView1.SelectedRow.Cells[5].Text == "In achievement" && GridView1.SelectedRow.Cells[3].Text != "Blood Group")
            {
            int ord = int.Parse(GridView1.SelectedRow.Cells[1].Text);
            string ordt = GridView1.SelectedRow.Cells[3].Text;
            var Test_Cate = (from O in Database.Orders
                            join T in Database.Test_Names
                            on O.Test_ID equals T.ID_Test
                            join Cat in Database.Test_Categories
                            on T.ID_Test_Catego equals Cat.ID_Test_Catego
                            where O.OrderNO==ord
                             select Cat.Name_Of_Catego).Single().ToString();
         
                if (Test_Cate == "Haematology")
                {
                    select();
                    Response.Redirect("~/CBC_Test.aspx");
                }
                else
                {
                    if (Test_Cate == "Chemistry")
                    {
                        select();
                        Response.Redirect("~/Biochemistry.aspx");
                    }
                }

            }
            else if (GridView1.SelectedRow.Cells[5].Text == "In achievement" && GridView1.SelectedRow.Cells[3].Text == "Blood Group")
            {

                select();
                Response.Redirect("~/Blood_Group_Test.aspx");


            }
        }


        else
        {


        }
        }
    
    protected void Vendor_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Ord_Lab.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Show_Occupy_Room.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }

}