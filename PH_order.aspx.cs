using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PH_order : System.Web.UI.Page
{
    DataClassesDataContext Database = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label7.Visible = false;
        Label8.Visible = false;
        if (!IsPostBack)
        {
            if (Session["idss"] == null && Session["pname"] == null)
            {
                Session["idss"] = "";
                
                Session["pname"] = "";

            }
            else
            {

                P.Text = Session["idss"].ToString();
                
                Nameppp.Text = Session["pname"].ToString();

            }
        }
       
    }
 





  







    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int qq = int.Parse(Quntity.Text);
        var Product_QUA = (from P in Database.Products

                           join B in Database.Product_Details
                      on P.Product_ID equals B.Product_ID
                           join SI in Database.Item_Stores
                           on B.Batch__Number equals SI.betch_ID
                           where P.Product__Code == P_ID.Text && SI.Store_ID == store_ID.SelectedValue && SI.complete == "No" && SI.Quntity> SI.@using 
                           select SI.Quntity-SI.@using).Single().ToString();
        int qq2 = int.Parse(Product_QUA);
        if (qq > qq2)
        {
            Label8.Visible = true;

        }
        else
        {
             var ID_pro = (from P in Database.Products

                           where P.Product__Code == P_ID.Text
                           select P.Product_ID).Single().ToString();
            int Pro=int.Parse(ID_pro);
            int idp = int.Parse(Session["idss"].ToString());
            string Usr_name = Session["UserName"].ToString();

        var Name_emp = (from L in Database.UserTables
                        join ee in Database.Employees
                       on L.EM_ID equals ee.E_ID
                        where L.UserName == Usr_name
                        select ee.E_ID).Single().ToString();
        

      
        int emp = int .Parse(Name_emp);
           // Add_ph_or(int pro,int e_id,int p_id, int quantity,string store_id, DateTime orderdate)
            Class1.Add_ph_or(Pro,emp,idp,qq,store_ID.SelectedValue,DateTime.Now);


            var item_id = (from P in Database.Products

                               join B in Database.Product_Details
                          on P.Product_ID equals B.Product_ID
                               join SI in Database.Item_Stores
                               on B.Batch__Number equals SI.betch_ID
                               where P.Product__Code == P_ID.Text && SI.Store_ID == store_ID.SelectedValue && SI.complete == "No" && SI.Quntity > SI.@using
                               select SI.itemID).Single().ToString();
            int item = int.Parse(item_id);

            
            Item_Store iiii = Database.Item_Stores.Single(i=>i.itemID==item);
            iiii.@using = iiii.@using + qq;
            Database.SubmitChanges();


        }

    }



    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string s = store_ID.SelectedValue;

        var q = from n in Database.Item_Stores
                where n.Store_ID == s
                select n;


    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        var name = from D in Database.Products
                   where D.Product__Code == P_ID.Text
                   select D.Product__Name;
        if (name.Any())
        {
            string pproname = name.Single().ToString();
            P_Name.Text = pproname;
            var Product_va = from P in Database.Products

                             join B in Database.Product_Details
                        on P.Product_ID equals B.Product_ID
                             join SI in Database.Item_Stores
                             on B.Batch__Number equals SI.betch_ID
                             where P.Product__Code == P_ID.Text&& SI.Store_ID==store_ID.SelectedValue && SI.complete=="No"&&SI.Quntity> SI.@using
                             select SI;
            if (Product_va.Any()) { } 
            else 
            { 
                Label7.Visible = true;
                Quntity.Enabled = false;
            }
            

        }
    }
  
}