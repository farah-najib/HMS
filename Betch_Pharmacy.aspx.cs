using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Betch_Pharmacy : System.Web.UI.Page

{
    DataClassesDataContext Database = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        Labelerr.Visible = false;
       

    }
  
   
    protected void Insert_Betch_Click(object sender, ImageClickEventArgs e)
    {
        if (txtDate.Text == "" || endDate.Text == "" || Qun_Text.Text == "" || Note_Text.Text == "")
        { Labelerr.Visible = true; }
        else
        {
            DateTime star_date = DateTime.Parse(txtDate.Text);
            DateTime en_date = DateTime.Parse(endDate.Text);


            int quantity = int.Parse(Qun_Text.Text);



            string note_str = Note_Text.Text;
            var name = (from P in Database.Products
                        where P.Product__Code == ID_Text.Text
                        select P.Product_ID).Single().ToString();

            int id = int.Parse(name);
            int use_store = 0;
            string note = Note_Text.Text;

            //    public static Product_Detail Add_Pro_Bat(int pro, int quantity, int use, DateTime startdate, DateTime enddate)
            Class1.Add_Pro_Bat(id, quantity, use_store, star_date, en_date, note);
            MY_Calculate.UNvisiblelables(Page.Controls);
            MY_Calculate.UNvisibleInputs(Page.Controls);
            Insert_Betch.Visible = false;
            Cancel.Visible = false;
            ImageButton2.Visible = true;
            


            s.Visible = true;
        }
    }
    protected void Cancel_Click(object sender, ImageClickEventArgs e)
    {
        MY_Calculate.ClearInputs(Page.Controls);
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/AdminPh.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true); 
    }
    protected void Search_Click(object sender, ImageClickEventArgs e)
    {

        var name = from D in Database.Products
                   where D.Product__Code == ID_Text.Text
                   select D.Product__Name;
        if (name.Any())
        {
            string pproname = name.Single().ToString();
            P_N_Text.Text = pproname;
            Insert_Betch.Visible = true;
            Cancel.Visible = true;

            MY_Calculate.visiblelables(Page.Controls);
            MY_Calculate.visibleInputs(Page.Controls);
            Labelerr.Visible = false;
            s.Visible = false;
            Sherch.Visible = false;
           
            
           
        }
        else
        {

            
            MY_Calculate.UNvisiblelables(Page.Controls);
            MY_Calculate.UNvisibleInputs(Page.Controls);
            Pro_ID.Visible = true;
            ID_Text.Visible = true;
            Sherch.Visible = true;
        }        
         
           
        
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Cate.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/addVendor.aspx");

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Ph_Add_Product.aspx");
    }
}