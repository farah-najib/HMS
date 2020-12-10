using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ItStore : System.Web.UI.Page
{


    DataClassesDataContext Database = new DataClassesDataContext();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["idss"] == null && Session["Pid"] == null && Session["Q"] == null)
            {

                Session["idss"] = "";
                Session["Pid"] = "";
                Session["Q"] = "";
                Session["PName"] = "";
            }
            else
            {

                TextBox1.Text = Session["idss"].ToString();

                TextBox2.Text = Session["Pid"].ToString();
                TextBox3.Text = Session["PName"].ToString();
                TextBox4.Text = Session["Q"].ToString();

              


            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id_store = TextBox1.Text;
        int q = int.Parse(TextBox4.Text);
         string idi =TextBox2.Text;//product id
       
       
        var name = (from P in Database.Products
                    where P.Product__Code == idi
                    select P.Product_ID).Single().ToString();
        int id = int.Parse(name);

        var b = from Pr in Database.Product_Details
                where Pr.Product_ID == id && Pr.Qunttity > Pr.Using && (Pr.Qunttity - Pr.Using) >= q
                select Pr.Batch__Number;
              

       if (b.Any())
        {
             var bet = (from ite in Database.Item_Stores
                       join dds in Database.Product_Details
                       on ite.betch_ID equals dds.Batch__Number
                       where dds.Product_ID == id && ite.Quntity == ite.@using && ite.complete == "No"
                       select ite.betch_ID).Single().ToString();
            int oldbetch = int.Parse(bet);
            var bets=( from Pr in Database.Product_Details
                    where Pr.Product_ID == id && Pr.Qunttity > Pr.Using && (Pr.Qunttity - Pr.Using) >= q
                    select Pr.Batch__Number).Single().ToString();
            int betch  = int.Parse(bets);
            int u=0;
            string c = "No";
           string n=TextBox3.Text;
            DateTime date = DateTime.Now;
            //(string id_store, int pro,int quantity,int use,DateTime itemdate,string complete)
            Class1.Add_Store_Item(id_store, betch, q, u, date, c ,n);


            Product_Detail editdetil = Database.Product_Details.Single(pd => pd.Batch__Number == betch);
            editdetil.Using = editdetil.Using + q;

            Item_Store edititem = Database.Item_Stores.Single(str => str.betch_ID == oldbetch && str.@using == str.Quntity);
            edititem.complete = "Yes";
            Database.SubmitChanges();
            MY_Calculate.UNvisibleInputs(Page.Controls);
            MY_Calculate.UNvisiblelables(Page.Controls);
            
            Button1.Visible = false;
            s.Visible = true;
            ImageButton1.Visible = true;


        }
        else
        {
            MY_Calculate.UNvisibleInputs(Page.Controls);
            MY_Calculate.UNvisiblelables(Page.Controls);

            Button1.Visible = false;
            
            ImageButton1.Visible = true;
            Label5.Visible = true;
        }
       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/AdminPh.aspx");
    }
}