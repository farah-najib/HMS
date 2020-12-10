using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Biochemistry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["idpatient"] == null)
            {

                Session["idpatient"] = "";


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
                          join T in Database.Test_Names
                          on O.Test_ID equals T.ID_Test
                          where P.ID_Patient == pid && O.O_Status == "In achievement" && T.ID_Test_Catego == 2
                          select new { Name = P.P_NAME + " " + P.P_FATHER_NAME + " " + P.P_SARNAME, birth = P.P_DATE_OF_BIRTH_, sex = P.GENDER, re = O.Rq_Date, te = O.Test_Date, oo = O.OrderNO };

        if (DOrder_Show != null)
        {
            foreach (var Or in DOrder_Show)
            {

                TextName.Text = Or.Name;
                TextreD.Text = Or.re.ToString();
                TexttD.Text = Or.te.ToString();

            }


            NormalCrea.Text = "0.5-1.4 mg/dl";
            NormalUrea.Text = "7-21 mg/dl";
            NormalUric.Text = "3.5-8.5 mg/dl";

        }
    }
    protected void TextCrea_TextChanged(object sender, EventArgs e)
    {
        float creatinine = float.Parse(TextCrea.Text);
        if (creatinine < 0.5)
        { valuehicrea.Text = "Low"; }
        else
        {
            if (creatinine > 1.4)
            { valuehicrea.Text = "Heigh"; }
        }
    }
    protected void print_Click(object sender, ImageClickEventArgs e)
    {
        Label42.Visible = true;
        Session["ctrl"] = Panel1;
        Control ctrl = (Control)Session["ctrl"];
        MY_Calculate.PrintWebControl(ctrl);
    }
    protected void TextUrea_TextChanged(object sender, EventArgs e)
    {
        // NormalUrea.Text = "7-21 mg/dl";

        float Urea = float.Parse(TextUrea.Text);
        if (Urea < 7) valuehiur.Text = "low";
        else if (Urea > 21) valuehiur.Text = "heigh";

    }
    protected void TextUric_TextChanged(object sender, EventArgs e)
    {// NormalUric.Text = "3.5-8.5 mg/dl";
        float uric = float.Parse(TextUric.Text);
        if (uric < 3.5) highuruic.Text = "low";
        else if (uric > 8.5) highuruic.Text = "heigh";



    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {

        int pid = int.Parse(TextID.Text);
        DataClassesDataContext Database = new DataClassesDataContext();
        var DOrder_Show = from P in Database.Patients
                          join O in Database.Orders
                           on P.ID_Patient equals O.P_ID
                          join T in Database.Test_Names
                          on O.Test_ID equals T.ID_Test
                          where P.ID_Patient == pid && O.O_Status == "In achievement" && T.ID_Test_Catego == 2
                          select new { Name = P.P_NAME + " " + P.P_FATHER_NAME + " " + P.P_SARNAME, birth = P.P_DATE_OF_BIRTH_, sex = P.GENDER, re = O.Rq_Date, te = O.Test_Date, oo = O.OrderNO };

        if (DOrder_Show != null)
        {
            foreach (var Or in DOrder_Show)
            {
                
                float crea = float.Parse(TextCrea.Text);
                float urea = float.Parse(TextUrea.Text);
                float urid = float.Parse(TextUric.Text);


                CBC_Table CBC_Insert = new CBC_Table();
                CBC_Insert.No_order = Or.oo;
                CBC_Insert.crea=crea;
                CBC_Insert.urea=urea;
                CBC_Insert.urid=urid;
                Database.CBC_Tables.InsertOnSubmit(CBC_Insert);
                Database.SubmitChanges();


               
             
                Order editorder = Database.Orders.Single(o => o.OrderNO == Or.oo);

                editorder.O_Status = "Ready";
                Database.SubmitChanges();
                print.Enabled=true;

            }
        }
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        MY_Calculate.ClearInputs(Page.Controls);
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true); 
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        int pid = int.Parse(TextID.Text);

        DataClassesDataContext Database = new DataClassesDataContext();
        var DOrder_Show = from P in Database.Patients
                          join O in Database.Orders
                           on P.ID_Patient equals O.P_ID
                          join T in Database.Test_Names
                          on O.Test_ID equals T.ID_Test
                          where P.ID_Patient == pid && O.O_Status == "Ready" && T.ID_Test_Catego == 2
                          select new { Name = P.P_NAME + " " + P.P_FATHER_NAME + " " + P.P_SARNAME, birth = P.P_DATE_OF_BIRTH_, sex = P.GENDER, re = O.Rq_Date, te = O.Test_Date, oo = O.OrderNO };

        if (DOrder_Show != null)
        {
            foreach (var Or in DOrder_Show)
            {

                TextName.Text = Or.Name;
                TextreD.Text = Or.re.ToString();
                TexttD.Text = Or.te.ToString();

            }


            NormalCrea.Text = "0.5-1.4 mg/dl";
            NormalUrea.Text = "7-21 mg/dl";
            NormalUric.Text = "3.5-8.5 mg/dl";




            var test_history = from servic in Database.CBC_Tables
                               join p in Database.Orders
                               on servic.No_order equals p.OrderNO
                               join Pa in Database.Patients
                              on p.P_ID equals Pa.ID_Patient
                               where p.O_Status == "Ready" && p.Rq_Date == Calendar1.SelectedDate && Pa.ID_Patient == pid
                               select servic;
            foreach (var Or in test_history)
            {

                
                TextCrea.Text=Or.crea.ToString();
                TextUrea.Text=Or.urea.ToString();
                TextUric.Text = Or.urid.ToString();



            }

            print.Enabled = true;
            Calendar1.Visible = false;

        }
    }
}