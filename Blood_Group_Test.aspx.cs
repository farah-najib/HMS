using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Blood_Group_Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["idpatient"] == null)
            {

                Session["idpatient"] = null;
                Calendar1.Visible = true;
                TextBox1.Visible = true;
                blood_g.Visible = false;
                ImageButton1.Visible = false;
                ImageButton5.Visible = false;
                ImageButton4.Visible = false;
                MY_Calculate.UNenableInputs(Page.Controls);
                TextID.Enabled = true;
                ImageButton3.Visible = true;

            }
            else
            {

                TextID.Text = Session["idpatient"].ToString();
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int pid = int.Parse(TextID.Text);

        DataClassesDataContext Database = new DataClassesDataContext();
        var DOrder_Show = from P in Database.Patients
                          join O in Database.Orders
                           on P.ID_Patient equals O.P_ID

                          where P.ID_Patient == pid && O.O_Status == "In achievement" && O.Test_ID == 6
                          select new { Name = P.P_NAME + " " + P.P_FATHER_NAME + " " + P.P_SARNAME, birth = P.P_DATE_OF_BIRTH_, sex = P.GENDER, re = O.Rq_Date, te = O.Test_Date, oo = O.OrderNO };
        if (DOrder_Show != null)
        {
            foreach (var Or in DOrder_Show)
            {

                TextName.Text = Or.Name;
                TextreD.Text = Or.re.ToString();
                TexttD.Text = Or.te.ToString();

            }
        }
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        int pid = int.Parse(TextID.Text);
        DataClassesDataContext Database = new DataClassesDataContext();
        var DOrder_Show = (from P in Database.Patients
                           join O in Database.Orders
                            on P.ID_Patient equals O.P_ID

                           where P.ID_Patient == pid && O.O_Status == "In achievement" && O.Test_ID == 6
                           select O.OrderNO).Single().ToString();

        int ordd = int.Parse(DOrder_Show);

        CBC_Table CBC_Insert = new CBC_Table();
        CBC_Insert.No_order = ordd;
        CBC_Insert.Blood_Group = blood_g.SelectedValue;
        Database.CBC_Tables.InsertOnSubmit(CBC_Insert);
        Database.SubmitChanges();


        Order editorder = Database.Orders.Single(o => o.OrderNO == ordd);

        editorder.O_Status = "Ready";
        Database.SubmitChanges();

        Patient editpatient = Database.Patients.Single(p => p.ID_Patient == pid);
        editpatient.Blood_Group = blood_g.SelectedValue;
        Database.SubmitChanges();
        print.Enabled = true;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
    protected void print_Click(object sender, ImageClickEventArgs e)
    {
        Label42.Visible = true;
        Session["ctrl"] = Panel1;
        Control ctrl = (Control)Session["ctrl"];
        MY_Calculate.PrintWebControl(ctrl);
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

        int pid = int.Parse(TextID.Text);

        DataClassesDataContext Database = new DataClassesDataContext();
        var DOrder_Show = from P in Database.Patients
                          join O in Database.Orders
                           on P.ID_Patient equals O.P_ID

                          where P.ID_Patient == pid && O.O_Status == "Ready" && O.Test_ID == 6
                          select new { Name = P.P_NAME + " " + P.P_FATHER_NAME + " " + P.P_SARNAME, birth = P.P_DATE_OF_BIRTH_, sex = P.GENDER, re = O.Rq_Date, te = O.Test_Date, oo = O.OrderNO };
        if (DOrder_Show != null)
        {
            foreach (var Or in DOrder_Show)
            {

                TextName.Text = Or.Name;
                TextreD.Text = Or.re.ToString();
                TexttD.Text = Or.te.ToString();

            }


            var test_history = from servic in Database.CBC_Tables
                               join p in Database.Orders
                               on servic.No_order equals p.OrderNO
                               join  Pa in Database.Patients
                               on p.P_ID equals Pa.ID_Patient
                               where p.O_Status == "Ready" && p.Rq_Date == Calendar1.SelectedDate&&p.Test_ID==6 && Pa.ID_Patient==pid
                               select servic;


            foreach (var Or in test_history)
            {
                TextBox1.Text = Or.Blood_Group;
            }
            print.Enabled = true;
            Calendar1.Visible = false;



        }

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true); 
    }
}


