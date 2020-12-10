using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
     DataClassesDataContext Database = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        



    }

 
    /// <summary>
    ///  //method for binding GridView
    /// </summary>
    
    protected void BindGridView()
    {
        string dd=DropDownList1.SelectedValue;
        int pp=int.Parse(IDP.Text);
        var Order_Show = from R in Database.Order_phs

                         join P in Database.Products
                     on R.Product_ID equals P.Product_ID
                          join Emp in Database.Employees
                        on R.E_ID equals Emp.E_ID
                        where R.Patient_ID==pp&&R.Store_ID==dd 

                         select new { Order_ID = R.Order_ID, Order_Date = R.Order_Date, Qunantity = R.Qunantity, E_ID = R.E_ID, Product_ID = P.Product__Code, Product__Name = P.Product__Name, E_NAME = Emp.E_NAME };

        if (Order_Show != null)
        {

            GridView1.DataSource = Order_Show;

            GridView1.DataBind();

        }

    }



 
    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int IDpatient = int.Parse(IDP.Text);

        var show_name = (from p in Database.Patients
                         where p.ID_Patient == IDpatient
                         select p.P_NAME + "  " + p.P_FATHER_NAME + "  " + p.P_SARNAME).Single().ToString();
        Np.Text = show_name;
        BindGridView();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        TextBox codeproduct = (TextBox)GridView1.FooterRow.FindControl("txt_ID_ins");
        TextBox txtquan = (TextBox)GridView1.FooterRow.FindControl("txt_Quantity_insert");
        TextBox txtpatient = (TextBox)GridView1.FooterRow.FindControl("txt_I_insert");



        int Pati_ID = int.Parse(IDP.Text);
        string st = DropDownList1.SelectedValue;
        var id = (from C in Database.Products
                  where C.Product__Code == codeproduct.Text

                  select C.Product_ID).Single().ToString();
        int ID_P = 1;

        ID_P = int.Parse(id);







        int quan = int.Parse(txtquan.Text);//quantity
        int emp = 1;//how 
        DateTime dateOrder = DateTime.Now; //datetime order



        

        //(int pro,int e_id,int p_id, int quantity,string store_id, DateTime orderdate)
        Class1.Add_ph_or(ID_P, emp, Pati_ID, quan, st, dateOrder);



        BindGridView();

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/AdminPh.aspx");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = (int)GridView1.DataKeys[e.RowIndex].Value;



        var delete = from O in Database.Order_phs
                     where O.Order_ID == id
                     select O;




        Database.Order_phs.DeleteAllOnSubmit(delete);



        Database.SubmitChanges();



        GridView1.EditIndex = -1;

        BindGridView();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/DeleteProduct.aspx");

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UpDate.aspx");

    }
}


