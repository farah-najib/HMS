using System;
using System.Collections.Generic;
using System.Data.Linq.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpDate : System.Web.UI.Page
{
    DataClassesDataContext Database = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void up_date_Click(object sender, ImageClickEventArgs e)
    {
        
        Product editproduct = Database.Products.Single(p=>p.Product__Code==ID_Text.Text);

        if (CheckBoxList1.Items[0].Selected)
        {
            editproduct.Product__Name = Name_Product_1.Text;
        }
        if (CheckBoxList1.Items[1].Selected)
        {
            float cost = float.Parse(Text_Unit_Cost.Text);
            editproduct.Unit_Cost = cost;
        }
        if (CheckBoxList1.Items[2].Selected)
        {
            string cate = DropDownCategory.SelectedItem.Value;

            var cat = (from C in Database.Product_Categories
                       where C.Cate_Name == cate

                       select C.cate_ID).Single().ToString();
            editproduct.category_ID = cat;
         
        }
        if (CheckBoxList1.Items[3].Selected)
        {
            string ven = DropDownVendor.SelectedItem.Value;

            var Ve = (from vv in Database.Pharmacy_Vendors
                       where vv.Vendor_Name==ven


                       select vv.Vendor_ID).Single().ToString();
            editproduct.category_ID = ven;
        }
        if (CheckBoxList1.Items[4].Selected)
        {
            editproduct.Description = Text_Description.Text;
        }
        Database.SubmitChanges();
        MY_Calculate.UNvisiblelables(Page.Controls);
        MY_Calculate.UNvisibleInputs(Page.Controls);
        MY_Calculate.UNvisibleDropDownList(Page.Controls);
        up_date.Visible = false;
        Cancel.Visible = false;
        Search.Visible = false;
        CheckBoxList1.Visible = false;
        ImageButton2.Visible = true;


        s.Visible = true;
      
      
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
       
        if (CheckBoxList1.Items[0].Selected)
        {
            Label1.Visible = true;
            Name_Product_1.Visible = true;
            
           
            
        }
        else
        {
            Label1.Visible = false;
            Name_Product_1.Visible = false;
            
           
        }

        if (CheckBoxList1.Items[1].Selected)
        {
            Unit_Cost.Visible = true;
            Text_Unit_Cost.Visible = true;
            
           

        }
        else
        {
            Unit_Cost.Visible = false;
            Text_Unit_Cost.Visible = false;
          
           
        }
        if (CheckBoxList1.Items[2].Selected)
        {
            Category.Visible = true;
            DropDownCategory.Visible = true;

        }
        else
        {
            Category.Visible = false;
            DropDownCategory.Visible = false;
        }
        if (CheckBoxList1.Items[3].Selected)
        {
            Vendor.Visible = true;
            DropDownVendor.Visible = true;

        }
        else
        {
            Vendor.Visible = false;
            DropDownVendor.Visible = false;
        }
        if (CheckBoxList1.Items[4].Selected)
        {
            Description.Visible = true;
            Text_Description.Visible = true;


        }
        else 
        {
            Description.Visible = false;
            Text_Description.Visible = false;
        }


        

        
           
        
        
    }

 
    protected void Search_Click(object sender, ImageClickEventArgs e)
    {
        string idi = ID_Text.Text;
        var name = from D in Database.Products
                   where D.Product__Code == idi
                   select new { Product_Code = D.Product__Code, Name = D.Product__Name, Price = D.Unit_Cost };
        if (name.Any())
        {
            
           
            GridView1.DataSource = name;
            GridView1.DataBind();
            GridView1.Visible = true;
            Product_CHEK.Visible = true;
            CheckBoxList1.Visible = true;
            Search.Visible = false;
            up_date.Visible = true;
            Cancel.Visible = true;

        }
        else
        {
            Sherch.Visible = true;
            GridView1.Visible = false;
        }       
         
    }
    protected void ID_Text_TextChanged(object sender, EventArgs e)
    {
        ID_Text.Text = ID_Text.Text.ToUpper();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true); 
    }
    protected void Cancel_Click(object sender, ImageClickEventArgs e)
    {

        MY_Calculate.ClearInputs(Page.Controls);
        
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/DeleteProduct.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Order_Ph_Admin .aspx");
    }
}