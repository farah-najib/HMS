using System;
using System.Collections.Generic;
using System.Data.Linq.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataClassesDataContext Database = new DataClassesDataContext();
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        string idi = P_ID_Text.Text;
        var name = (from P in Database.Products
                    where P.Product__Code == idi
                    select P.Product_ID).Single().ToString();

        int id = int.Parse(name);

        var delete = from P in Database.Product_Details
                     where P.Product_ID == id && P.Using == 0
                     select P;

        Database.Product_Details.DeleteAllOnSubmit(delete);
        Database.SubmitChanges();
        GridView1.Visible = false;
        ImageButton1.Visible = false;
        enter.Visible = false;
        MY_Calculate.UNvisibleInputs(Page.Controls);
        MY_Calculate.UNvisiblelables(Page.Controls);
        massage.Visible = true;
        ImageButton2.Visible = true;

    }
    protected void enter_Click(object sender, ImageClickEventArgs e)
    {
        string idi = P_ID_Text.Text;
        var name = from P in Database.Products
                   where SqlMethods.Equals(P.Product__Code, idi)
                   select P.Product_ID;
        if (name.Any())
        {
            string idpro = name.Single().ToString();
            int id = int.Parse(idpro);

        var delete = from PD in Database.Product_Details
                     join P in Database.Products
               on PD.Product_ID equals P.Product_ID
                     where PD.Product_ID == id && PD.Using == 0
                     select new { Product_Code = P.Product__Code, Product_Name = P.Product__Name, Betch_NO = PD.Batch__Number, Quantity = PD.Qunttity };
        GridView1.DataSource = delete;

        GridView1.DataBind();

        }
        else
        {
            Sherch.Visible = true;
        }
        
      
    }
    protected void back_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/AdminPh.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true); 
    }
    protected void P_ID_Text_TextChanged(object sender, EventArgs e)
    {
        P_ID_Text.Text = P_ID_Text.Text.ToUpper();

    }
    protected void Vendor_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UpDate.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Order_Ph_Admin .aspx");
    }
}