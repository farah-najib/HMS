using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPh : System.Web.UI.Page
{
    DataClassesDataContext Database = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
      //  Label3.Text = Session["UserName"].ToString();
        
        var item = from i in Database.Item_Stores
                   join P in Database.Product_Details
                  on i.betch_ID equals P.Batch__Number
                   join pp in Database.Products
                 on P.Product_ID equals pp.Product_ID
                   where i.complete == "NO" && i.Quntity == i.@using
                   select new
                   {

                       Store_ID = i.Store_ID,
                      
                       Product_Code = pp.Product__Code,
                       Product_Name = pp.Product__Name,
                       Quantity=i.Quntity
                   };


        GridView1.DataSource = item;
        GridView1.DataBind();


        if (GridView1.Rows.Count!=0 ) {
            ImageButton1.Visible = true;
            Label1.Visible = true;
        }

                   

    }
   
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Betch_Pharmacy.aspx");
    }


    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/DeleteProduct.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UpDate.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Order_Ph_Admin .aspx");
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Cate.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Ph_Add_Product.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/addVendor.aspx");
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

       
        Session["idss"] = GridView1.SelectedRow.Cells[1].Text; ;
        Session["Pid"] = GridView1.SelectedRow.Cells[2].Text; ;
        Session["PName"] = GridView1.SelectedRow.Cells[3].Text; ;
        Session["Q"] = GridView1.SelectedRow.Cells[4].Text; ;






    }



















   
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        select();
        Response.Redirect("~/ItStore.aspx");

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Add_Store_Item.aspx");

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}