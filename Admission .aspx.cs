using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admission_ : System.Web.UI.Page
{
    DataClassesDataContext Database = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["ppid"] == null && Session["ppname"] == null)
            {
                
                Session["ppid"] = "";
                Session["ppname"] = "";

            }
            else
            {

                TextBox1.Text = Session["ppid"].ToString();

                TextBox2.Text = Session["ppname"].ToString();

            }
        }

    }

    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        
        string Usr_name = Session["UserName"].ToString();

        var Name_emp = (from L in Database.UserTables
                        join ee in Database.Employees
                       on L.EM_ID equals ee.E_ID
                        where L.UserName == Usr_name
                        select ee.E_ID).Single().ToString();
        

      int idemp = int.Parse(Session["ppid"].ToString());
        int emp = int .Parse(Name_emp);


        string room_no = DropDownList2.SelectedItem.Value;
       int no_r = int.Parse(room_no);
     
        DateTime adm = DateTime.Now;
        Class1.Admission(idemp, emp, no_r, adm);
       
        Room rr = Database.Rooms.Single(R => R.Room_No_ == no_r);
        rr.Room_Status = "Occupy";
        Database.SubmitChanges();
        MY_Calculate.UNvisibleInputs(Page.Controls);
        MY_Calculate.UNvisiblelables(Page.Controls);
        MY_Calculate.UNvisibleDropDownList(Page.Controls);
        Button1.Visible = false;
        s.Visible = true;
        ImageButton1.Visible = true;
        

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}
