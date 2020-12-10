using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ph_Add_Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Labelerr.Visible = false;

    }



    protected void Insert_Product_Click(object sender, ImageClickEventArgs e)
    {
        if (P_N_Text.Text == "" || DropDownList1.SelectedItem.Value == "" || DropDownVendor.SelectedItem.Value == "" || DropDownCategory.SelectedItem.Value == "" || Unit_Cost.Text == "" || Text_Description.Text == "")
        { Labelerr.Visible = true; }
        else
        {
            DataClassesDataContext Database = new DataClassesDataContext();
            string product_name = P_N_Text.Text;

            string name_form = DropDownList1.SelectedItem.Value;

            var form = (from F in Database.form_drugs
                        where F.F_Name == name_form
                        select F.F_ID).Single().ToString();







            string vend = DropDownVendor.SelectedItem.Value;

            var ven = (from V in Database.Pharmacy_Vendors
                       where V.Vendor_Name == vend

                       select V.Vendor_ID).Single().ToString();






            string cate = DropDownCategory.SelectedItem.Value;

            var cat = (from C in Database.Product_Categories
                       where C.Cate_Name == cate

                       select C.cate_ID).Single().ToString();









            string cost = Unit_Cost.Text;
            float mony_unit = float.Parse(cost);




            string desc = Text_Description.Text;

            //public static Product Add_Product(string Pro_Name,float un_cost ,string descr,string cate,string ven,string form)
            Class1.Add_Product(product_name, mony_unit, desc, cat, ven, form);
            MY_Calculate.UNvisiblelables(Page.Controls);
            MY_Calculate.UNvisibleInputs(Page.Controls);
            MY_Calculate.UNvisibleDropDownList(Page.Controls);
            Insert_Product.Visible = false;
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
        Response.Redirect("~/Betch_Pharmacy.aspx");

    }
}