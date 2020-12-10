using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Labelerr.Visible = false;

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
    protected void Insert_category_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "")
        { Labelerr.Visible = true; }
        else
        {
            string id = TextBox1.Text;
            string name = TextBox2.Text;
            Class1.Add_Cate(id, name);
            Insert_category.Visible = false;
            Cancel.Visible = false;

            ImageButton2.Visible = true;


            s.Visible = true;
        }
    }

    protected void gotohome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/addVendor.aspx");
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