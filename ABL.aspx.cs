using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ABL : System.Web.UI.Page
{
    DataClassesDataContext Database = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox3.Enabled = true;

        Label20.Visible = false;
        Label88.Visible = false;
        LabelEBV.Visible = false;
        esitmated.Visible = false;
        TextBox4.Visible = false;
        allowable.Visible = false;


        Labelerr.Visible = false;
        if (!IsPostBack)
        {

            if (Session["idss"] == null && Session["pname"] == null)
            {

                Session["idss"] = null;
                Session["pname"] = null;
                
                
                Calendar1.Visible = true;
                ImageButton1.Visible = false;
                ImageButton2.Visible = false;

            }
            else
            {

                TextBox3.Text = Session["idss"].ToString();

                TextBox1.Text = Session["pname"].ToString();

            }

        }



        

      /*  var Order = from oo in Database.Orders
                    join res in Database.CBC_Tables
                    on oo.OrderNO equals res.No_order
                    where( oo.Test_ID == 1 || oo.Test_ID == 2 || oo.Test_ID == 3 || oo.Test_ID == 4 )&& oo.Test_Date.Value.Date == DateTime.Now.Date
                    select res.Hematocrit;
        if (Order.Any())
        {
            Session["hct"] = Order.Single().ToString();
            hct.Enabled = false;
        }
        */
                      


        
    }


    protected void calcalateforman(double w1, double hc1)
    {
        double EBV;
        EBV = w1 * 75;
        esitmated.Text = EBV.ToString();
        double ab;
        
        ab = (EBV * (hc1 - 30)) / hc1;

        TextBox4.Text = Math.Ceiling(ab).ToString();
        Label20.Visible = true;
        Label88.Visible = true;
        LabelEBV.Visible = true;
        esitmated.Visible = true;
        TextBox4.Visible = true;
        allowable.Visible = true;

    }


    protected void calcalateforwoman(double w2, double hc2)
    {
        double EBV;
        EBV = w2 * 65;
        esitmated.Text = EBV.ToString();
        double ab;

        ab = (EBV * (hc2 - 30)) / hc2;

        TextBox4.Text = Math.Ceiling(ab).ToString();
        Label20.Visible = true;
        Label88.Visible = true;
        LabelEBV.Visible = true;
        esitmated.Visible = true;
        TextBox4.Visible = true;
        allowable.Visible = true;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int id = int.Parse(TextBox3.Text);
        string script1 = @"<script language=""javascript"">
alert('HCT Is Low');
</script>;";
        string script2 = @"<script language=""javascript"">
alert('HCT Is Heigh');
</script>;";

        float hctvalue = float.Parse(hct.Text);
       
        if (weight.Text == "" || hct.Text == "")
        { Labelerr.Visible = true; }
        else
        {
            var Patient_sex = (from P in Database.Patients
                               where P.ID_Patient == id
                               select P.GENDER).Single().ToString();

            if (Patient_sex == "Male")
            {
                if (hctvalue < 37.0)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1",
                        script1);
                }
                else if (hctvalue > 51.0)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1",
                            script2);
                }
                
                double w = double.Parse(weight.Text);
                double hc = double.Parse(hct.Text);


                calcalateforman(w, hc);

                Ser servic = new Ser();
                servic.Patient_ID = int.Parse(Session["idss"].ToString());
                servic.Test_ID = 27;
                servic.Weight = w;
                servic.Hct = hctvalue;
                servic.Date_Service = DateTime.Now;
                Database.Sers.InsertOnSubmit(servic);
                Database.SubmitChanges();
                Session["idss"] = null;
                Session["pname"] = null;


            }

            else

                if (Patient_sex == "Female")
                {
                    if (hctvalue < 35.0)
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1",
                            script1);
                    }
                    else if (hctvalue > 46.0)
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1",
                            script2);
                    }
                    
                    double w = double.Parse(weight.Text);

                    
                    double hc = double.Parse(hct.Text);

                    calcalateforwoman(w, hc);
                    Ser servic = new Ser();
                    servic.Patient_ID = int.Parse(Session["idss"].ToString());
                    servic.Test_ID = 27;
                    servic.Weight = w;
                    servic.Hct = hctvalue;
                    servic.Date_Service = DateTime.Now;
                    Database.Sers.InsertOnSubmit(servic);
                    Database.SubmitChanges();
                    Session["idss"] = null;
                    Session["pname"] = null;




                }
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        MY_Calculate.ClearInputs(Page.Controls);
    }
    protected void gotohome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/BMI.aspx");
    }


    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        int pp = int.Parse(TextBox3.Text);
        var test_history = from servic in Database.Sers
                           join p in Database.Patients
                           on servic.Patient_ID equals p.ID_Patient
                           where servic.Patient_ID == pp && servic.Test_ID == 27 && servic.Date_Service.Value.Date == Calendar1.SelectedDate
                           select new { hct1 = servic.Hct, we1 = servic.Weight, nam = p.P_NAME + " " + p.P_FATHER_NAME + " " + p.P_SARNAME, sex= p.GENDER};
        foreach (var Or in test_history)
        {
            
                TextBox1.Text = Or.nam;
                weight.Text = Or.we1.ToString();
                Session["www"] = weight.Text;
                hct.Text = Or.hct1.ToString();
                Session["hhh"] = hct.Text;
           


        }
        ImageButton3.Visible = true;
        Calendar1.Visible = false;

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        double w2 = double.Parse(Session["www"].ToString());
        double hh2 = double.Parse(Session["hhh"].ToString());
        int pp = int.Parse(TextBox3.Text);
        var Patient_sex = (from P in Database.Patients
                               where P.ID_Patient == pp
                               select P.GENDER).Single().ToString();

        if (Patient_sex == "Male")
        {
            calcalateforman(w2, hh2);
            
        }
        else
            if (Patient_sex == "Female")
            {
                calcalateforwoman(w2, hh2);
            }
    }
}