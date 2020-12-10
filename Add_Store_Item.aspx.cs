using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add_Store_Item : System.Web.UI.Page
{
    DataClassesDataContext Database = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        s.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
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
               

            MY_Calculate.visiblelables(Page.Controls);
            MY_Calculate.visibleInputs(Page.Controls);
            MY_Calculate.visibleDropDownList(Page.Controls);
            s.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Insert_Betch.Visible = true;
            ImageButton2.Visible = true;
            Search.Visible = false;
        


        }
    }
    protected void Insert_Betch_Click(object sender, ImageClickEventArgs e)
    {
        string id_store = DropDownList1.SelectedValue;
        int q = int.Parse(Qun_Text.Text);
        string idi = ID_Text.Text;


        var name = (from P in Database.Products
                    where P.Product__Code == idi
                    select P.Product_ID).Single().ToString();
        int id = int.Parse(name);

        var sss = from ppp in Database.Item_Stores

                  where ppp.Store_ID == DropDownList1.SelectedValue
                  select ppp;
        if (sss.Any())
        {

            var b = from R in Database.Product_Details
                    join P in Database.Item_Stores
                      on R.Batch__Number equals P.betch_ID
                    where R.Product_ID == id && R.Qunttity > R.Using && (R.Qunttity - R.Using) >= q && P.Namepro != P_N_Text.Text
                    select R.Batch__Number;
            if (b.Any())
            {

                int betch = int.Parse(b.Single().ToString());
                int u = 0;
                string c = "No";
                string namep = P_N_Text.Text;
                DateTime date = DateTime.Now;
                //(string id_store, int pro,int quantity,int use,DateTime itemdate,string complete)
                Class1.Add_Store_Item(id_store, betch, q, u, date, c, namep);
                Product_Detail editdetil = Database.Product_Details.Single(pd => pd.Batch__Number == betch);
                editdetil.Using = editdetil.Using + q;
                Database.SubmitChanges();
                MY_Calculate.UNvisibleInputs(Page.Controls);
                MY_Calculate.UNvisiblelables(Page.Controls);
                MY_Calculate.UNvisibleDropDownList(Page.Controls);
                Label3.Visible = true;
                
                Search.Visible = false;
                Insert_Betch.Visible = false;


            }
            else
            {
                s.Visible = true;
            }
        }
        else
        {
            var b2 = from R in Database.Product_Details
                    
                    where R.Product_ID == id && R.Qunttity > R.Using && (R.Qunttity - R.Using) >= q
                    select R.Batch__Number;
            if (b2.Any())
            {

                int betch = int.Parse(b2.Single().ToString());
                int u = 0;
                string c = "No";
                string namep = P_N_Text.Text;
                DateTime date = DateTime.Now;
                //(string id_store, int pro,int quantity,int use,DateTime itemdate,string complete)
                Class1.Add_Store_Item(id_store, betch, q, u, date, c, namep);
                Product_Detail editdetil = Database.Product_Details.Single(pd => pd.Batch__Number == betch);
                editdetil.Using = editdetil.Using + q;
                Database.SubmitChanges();
                MY_Calculate.UNvisibleInputs(Page.Controls);
                MY_Calculate.UNvisiblelables(Page.Controls);
                MY_Calculate.UNvisibleDropDownList(Page.Controls);
                Label3.Visible = true;
                Insert_Betch.Visible = false;
                Search.Visible = false;
            }
            else
            {
                Label2.Visible = true;
            }

        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/AdminPh.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);

    }
}