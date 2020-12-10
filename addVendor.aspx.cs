using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addVendor : System.Web.UI.Page
{
    

   
    protected void Page_Load(object sender, EventArgs e)
    {
        Labelerr.Visible = false;
    }
 
    protected void Insert_Vendor_Click(object sender, ImageClickEventArgs e)
    {
        if (Vid.Text == "" || Vname.Text == "" || Vphone.Text == "" || Vadd.Text=="")
        { Labelerr.Visible = true; }
        else
        {
            string id = Vid.Text;
            string n = Vname.Text;
            string p = Vphone.Text;
            string f = Vfax.Text;
            string add = Vadd.Text;
            Class1.Add_vendor(id, n, add, p, f);
            MY_Calculate.UNvisiblelables(Page.Controls);
            MY_Calculate.UNvisibleInputs(Page.Controls);
            Insert_Vendor.Visible = false;
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
    protected void Vid_TextChanged(object sender, EventArgs e)
    {
        s.Visible = false;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true); 
    }


    protected void Vendor_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Cate.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Ph_Add_Product.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Betch_Pharmacy.aspx");
    }
}