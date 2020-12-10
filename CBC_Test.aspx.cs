using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class CBC_Test : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["idpatient"] == null)
            {

                Session["idpatient"] = "";
                
                Calendar1.Visible = true;
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
                

                DateTime currentDate = DateTime.Now;

                TimeSpan difference = currentDate.Subtract(Or.birth);

                // This is to convert the timespan to datetime object
                DateTime age = DateTime.MinValue + difference;
               


                // Min value is 01/01/0001
                // Actual age is say 24 yrs, 9 months and 3 days represented as timespan
                // Min Valye + actual age = 25 yrs , 10 months and 4 days.
                // subtract our addition or 1 on all components to get the actual date.

                int ageInYears = age.Year - 1;

                string aaaa = ageInYears.ToString();
                age77.Text = aaaa;
                Session["ageInYears"] = ageInYears;
                int ageInMonths = age.Month - 1;
                Session["ageInMonths"] = ageInMonths;
                int ageInDays = age.Day - 1;
                Session["ageInDays"] = ageInDays;
                NormalPlate.Text = "150-450 K/MCL";
                NormalMCV.Text = "82.98.0  fl";
                NormalMCH.Text = "27.33.0  pg";
                NormalMCHC.Text = "32.0-36.0  %";
                NormalRDW.Text = "<=14.0  %";

                Session["gender"] = Or.sex;
                
                // if (Or.sex == "Male") {NormalESR.}

                if (ageInYears > 16)
                {

                    NormalNeutro.Text = "43-74%";
                    NormalMono.Text = "1-12%";
                    NormalEosino.Text = "0-6%";
                    NormalBaso.Text = "0-2%";
                }
                if (ageInYears > 14)
                {

                    NormalBands.Text = "0-10%";
                    NormalLympho.Text = "15-45 %";
                }

                if (ageInDays > 7 && ageInYears <= 14) { NormalBands.Text = "5-11 %"; }
                if (ageInYears > 1 && ageInYears <= 4) { NormalLympho.Text = "45-75 %"; }
                if (ageInYears > 5 && ageInYears <= 14) { NormalLympho.Text = "25-55 %"; }


                if (ageInYears >= 21) { NormalWBS.Text = "4.0-11.0 K/MCL"; }

                if (ageInYears > 1 && ageInYears <= 10) { NormalWBS.Text = "6.0-17.0 K/MCL"; }
                if (ageInYears > 10 && ageInYears <= 20) { NormalWBS.Text = "4.5-13.5 K/MCL"; }

                if (ageInDays > 0 && ageInYears <= 1) { NormalWBS.Text = "9.0-30.0 K/MCL"; }
                if (ageInYears < 16) { NormalMono.Text = "1-12 %"; NormalBaso.Text = "0-2 %"; }
                //=--------------------------------------------------------------------------------------
                if (ageInDays > 0 && ageInMonths <= 6) { NormalRCB.Text = "5.00-6.50K/MCL"; }
                if (ageInMonths > 6 && ageInYears <= 11) { NormalRCB.Text = "3.70-50.50 K/MCL"; }
                if (ageInYears >= 12 && ageInYears <= 15) { NormalRCB.Text = "4.40-5.80 K/MCL"; }
                if (ageInYears > 15 && Or.sex == "Male") { NormalRCB.Text = "4.40-5.80 K/MCL"; }
                if (ageInYears > 15 && Or.sex == "Female") { NormalRCB.Text = "3.80-5.20 K/MCL"; }
                //---------------------------------------- ------------------------------------------
                if (ageInDays > 0 && ageInMonths <= 1) { NormalHema.Text = "44.0-64.0 %"; }
                if (ageInMonths > 1 && ageInYears <= 10) { NormalHema.Text = "34.0-42.0 %"; }
                if (ageInYears > 10 && Or.sex == "Male") { NormalHema.Text = "37.0-51.0 %"; }
                if (ageInYears > 10 && Or.sex == "Female") { NormalHema.Text = "35.0-46.0 %"; }


                //---------------------------------------------------------------------------------

                if (ageInDays > 0 && ageInMonths <= 1) { NormalHemo.Text = "14.0-25.0 g/dl"; }
                if (ageInMonths > 1 && ageInYears <= 1) { NormalHemo.Text = "10.0-15.0 g/dl"; }
                if (ageInYears > 1 && ageInYears <= 10) { NormalHemo.Text = "11.0-14.0 g/dl"; }
                if (ageInYears > 10 && Or.sex == "Male") { NormalHemo.Text = "13.0-17.0 g/dl"; }
                if (ageInYears > 10 && Or.sex == "Female") { NormalHemo.Text = "11.5-15.5 g/dl"; }
            }
        }

        TextID.Enabled = false;

        
    }



  
    protected void print_Click(object sender, ImageClickEventArgs e)
    {
        Label42.Visible = true;
        Session["ctrl"] = Panel1;
        Control ctrl = (Control)Session["ctrl"];
        MY_Calculate.PrintWebControl(ctrl);
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
               
                        
                        float wbc = float.Parse(TextWBS.Text);
                        float neu = float.Parse(TextNeutro.Text);
                        float lympho = float.Parse(TextLympho.Text);
                        float mono = float.Parse(TextMono.Text);
                        float eosin = float.Parse(TextEosino.Text);
                        float baso = float.Parse(TextBaso.Text);
                        float band = float.Parse(TextBands.Text);
                        float rcb = float.Parse(TextRCB.Text);
                        float hemo = float.Parse(TextHemo.Text);
                        float hema = float.Parse(TextHema.Text);
                        float mcv = float.Parse(TextMCV.Text);
                        float mch = float.Parse(TextMCH.Text);
                        float mchc = float.Parse(TextMCHC.Text);
                        float rdw = float.Parse(TextRDW.Text);
                        float plate = float.Parse(TextPlate.Text);
                        float bleeding = 0; //float.Parse(TextCoagu.Text);
                        float coagul = 0; //float.Parse(TextCoagu.Text);
                        float reticul = 0; //float.Parse(TextReticu.Text);
                        float esr = 0; //float.Parse(TextESR.Text);
                        // string bloGP = ""; //TextGP1.Text;
                        // string bloGP2 ="";
                        //TextGP2.Text;
                        string bloodfilm = ""; //TextFilm.Text;
                        string remarks = ""; //TextRemark.Text;
                        string groupofblood = "";//bloGP1+" "+bloGP2;
                        float crea = 0;
                        float urea = 0;
                        float urid = 0;
                        //CBC(int order, float wbs, float neutro, float lympho, float mono ,float eosino,float baso, float bands, float rbc,float hemo,float hema,float mcv,float mch,float mchc ,float rdw ,float plate,float bleed,float coagu,float reti,float esr ,string bloodgroup,string film ,string remark , float Creat , float urea , float Urid) 
                        Class1.CBC(Or.oo, wbc, neu, lympho, mono, eosin, baso, band, rcb, hemo, hema, mcv, mch, mchc, rdw, plate, bleeding, coagul, reticul, esr, groupofblood, bloodfilm, remarks, crea, urea, urid);
                        Order editorder = Database.Orders.Single(o => o.OrderNO == Or.oo);

                        editorder.O_Status = "Ready";
                        Database.SubmitChanges();
                        print.Enabled = true;
                        MY_Calculate.UNenableInputs(Page.Controls);
                
            }
        }
    }
    protected void TextHema_TextChanged(object sender, EventArgs e)
    {
        double valueHCT = double.Parse(TextHema.Text);
       double valueRBC = double.Parse(TextRCB.Text);
        double valueHGB = double.Parse(TextHemo.Text);
        double valueMcv = (valueHCT * 10) / valueRBC;
        double valueMCH = (valueHGB * 10) / valueRBC;
        double valueMCHC = (valueHGB * 100) / valueHCT;
        double valueRDW = (valueMcv * 100) / valueRBC;
        TextMCV.Text = valueMcv.ToString();
        TextMCH.Text = valueMCH.ToString();
        TextMCHC.Text = valueMCHC.ToString();
        TextRDW.Text = valueRDW.ToString();
    }
    protected void TextWBS_TextChanged(object sender, EventArgs e)
    {
        int year = int.Parse(Session["ageInYears"].ToString());
        float valewbc=float.Parse(TextWBS.Text);
        if (year >= 21)
        {
            if (valewbc < 4.0) Lowhieghwbc.Text = "low";
            else if (valewbc > 11.0) Lowhieghwbc.Text = "heigh";
           
        }
        else if (valewbc > 1 && valewbc <= 10)
        {
            if (valewbc < 6.0) Lowhieghwbc.Text = "low";
            else if (valewbc > 17.0) Lowhieghwbc.Text = "heigh";
        }
        else if (year > 10 && year <= 20)
        {
            if (valewbc < 4.5) Lowhieghwbc.Text = "low";
            else if (valewbc > 13.5) Lowhieghwbc.Text = "heigh";
        }
        else if (year <= 1)
        {
            if (valewbc < 9.0) Lowhieghwbc.Text = "low";
            else if (valewbc > 30.0) Lowhieghwbc.Text = "heigh";
        }


    }
    protected void TextNeutro_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextPlate_TextChanged(object sender, EventArgs e)
    {
       
        float pls = float.Parse(TextPlate.Text);
        if (pls < 150) Lhplts.Text = "low";
        else if (pls > 450) Lhplts.Text = "heigh";

    }
    protected void TextRDW_TextChanged(object sender, EventArgs e)
    {
        
        float rdw = float.Parse(TextRDW.Text);
        if (rdw > 14.0) Lhrdw.Text = "heigh";

        

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
    protected void TextRCB_TextChanged(object sender, EventArgs e)
    {
        int year = int.Parse(Session["ageInYears"].ToString());
        int month = int.Parse(Session["ageInMonths"].ToString());
        int Day = int.Parse(Session["ageInDays"].ToString());
        string s = Session["gender"].ToString();
        float rcbv=float.Parse(TextRCB.Text);
        if (Day > 0 && month <= 6)
        {
            if (rcbv < 5.00) LHRcb.Text = ";ow";
            else if (rcbv > 6.50) LHRcb.Text = "heigh";
        }
        else if (month > 6 && year <= 11) 
        {
            if (rcbv < 3.70) LHRcb.Text = "low";
            else if (rcbv > 50.50) LHRcb.Text = "heigh";
        }

        else if (year >= 12 && year <= 15)
        {
            if (rcbv < 4.40) LHRcb.Text = "low";
            else if (rcbv > 5.80) LHRcb.Text = "heigh";

        }
        else if (year > 15 && s == "Male")
        {
            if (rcbv < 4.40) LHRcb.Text = "low";
            else if (rcbv > 5.80) LHRcb.Text = "heigh";
        }

        else if (year > 15 && s == "Female")
        {
            if (rcbv < 3.80) LHRcb.Text = "low";
            else if (rcbv > 5.20) LHRcb.Text = "heigh";
        }


       

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        MY_Calculate.ClearInputs(Page.Controls);
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
                          where P.ID_Patient == pid && O.O_Status == "Ready" && T.ID_Test_Catego == 2 && O.Rq_Date == Calendar1.SelectedDate
                          select new { Name = P.P_NAME + " " + P.P_FATHER_NAME + " " + P.P_SARNAME, birth = P.P_DATE_OF_BIRTH_, sex = P.GENDER, re = O.Rq_Date, te = O.Test_Date, oo = O.OrderNO };

        if (DOrder_Show != null)
        {
            foreach (var Or in DOrder_Show)
            {

                TextName.Text = Or.Name;
                TextreD.Text = Or.re.ToString();
                TexttD.Text = Or.te.ToString();


                DateTime currentDate = Or.te.Value.Date;

                TimeSpan difference = currentDate.Subtract(Or.birth);

                // This is to convert the timespan to datetime object
                DateTime age = DateTime.MinValue + difference;



                // Min value is 01/01/0001
                // Actual age is say 24 yrs, 9 months and 3 days represented as timespan
                // Min Valye + actual age = 25 yrs , 10 months and 4 days.
                // subtract our addition or 1 on all components to get the actual date.

                int ageInYears = age.Year - 1;

                string aaaa = ageInYears.ToString();
                age77.Text = aaaa;
                Session["ageInYears"] = ageInYears;
                int ageInMonths = age.Month - 1;
                Session["ageInMonths"] = ageInMonths;
                int ageInDays = age.Day - 1;
                Session["ageInDays"] = ageInDays;
                NormalPlate.Text = "150-450 K/MCL";
                NormalMCV.Text = "82.98.0  fl";
                NormalMCH.Text = "27.33.0  pg";
                NormalMCHC.Text = "32.0-36.0  %";
                NormalRDW.Text = "<=14.0  %";

                Session["gender"] = Or.sex;

                // if (Or.sex == "Male") {NormalESR.}

                if (ageInYears > 16)
                {

                    NormalNeutro.Text = "43-74%";
                    NormalMono.Text = "1-12%";
                    NormalEosino.Text = "0-6%";
                    NormalBaso.Text = "0-2%";
                }
                if (ageInYears > 14)
                {

                    NormalBands.Text = "0-10%";
                    NormalLympho.Text = "15-45 %";
                }

                if (ageInDays > 7 && ageInYears <= 14) { NormalBands.Text = "5-11 %"; }
                if (ageInYears > 1 && ageInYears <= 4) { NormalLympho.Text = "45-75 %"; }
                if (ageInYears > 5 && ageInYears <= 14) { NormalLympho.Text = "25-55 %"; }


                if (ageInYears >= 21) { NormalWBS.Text = "4.0-11.0 K/MCL"; }

                if (ageInYears > 1 && ageInYears <= 10) { NormalWBS.Text = "6.0-17.0 K/MCL"; }
                if (ageInYears > 10 && ageInYears <= 20) { NormalWBS.Text = "4.5-13.5 K/MCL"; }

                if (ageInDays > 0 && ageInYears <= 1) { NormalWBS.Text = "9.0-30.0 K/MCL"; }
                if (ageInYears < 16) { NormalMono.Text = "1-12 %"; NormalBaso.Text = "0-2 %"; }
                //=--------------------------------------------------------------------------------------
                if (ageInDays > 0 && ageInMonths <= 6) { NormalRCB.Text = "5.00-6.50K/MCL"; }
                if (ageInMonths > 6 && ageInYears <= 11) { NormalRCB.Text = "3.70-50.50 K/MCL"; }
                if (ageInYears >= 12 && ageInYears <= 15) { NormalRCB.Text = "4.40-5.80 K/MCL"; }
                if (ageInYears > 15 && Or.sex == "Male") { NormalRCB.Text = "4.40-5.80 K/MCL"; }
                if (ageInYears > 15 && Or.sex == "Female") { NormalRCB.Text = "3.80-5.20 K/MCL"; }
                //---------------------------------------- ------------------------------------------
                if (ageInDays > 0 && ageInMonths <= 1) { NormalHema.Text = "44.0-64.0 %"; }
                if (ageInMonths > 1 && ageInYears <= 10) { NormalHema.Text = "34.0-42.0 %"; }
                if (ageInYears > 10 && Or.sex == "Male") { NormalHema.Text = "37.0-51.0 %"; }
                if (ageInYears > 10 && Or.sex == "Female") { NormalHema.Text = "35.0-46.0 %"; }


                //---------------------------------------------------------------------------------

                if (ageInDays > 0 && ageInMonths <= 1) { NormalHemo.Text = "14.0-25.0 g/dl"; }
                if (ageInMonths > 1 && ageInYears <= 1) { NormalHemo.Text = "10.0-15.0 g/dl"; }
                if (ageInYears > 1 && ageInYears <= 10) { NormalHemo.Text = "11.0-14.0 g/dl"; }
                if (ageInYears > 10 && Or.sex == "Male") { NormalHemo.Text = "13.0-17.0 g/dl"; }
                if (ageInYears > 10 && Or.sex == "Female") { NormalHemo.Text = "11.5-15.5 g/dl"; }
            }





            var test_history = from servic in Database.CBC_Tables
                               join p in Database.Orders
                               on servic.No_order equals p.OrderNO
                               join Pa in Database.Patients
                              on p.P_ID equals Pa.ID_Patient
                               where p.O_Status == "Ready" && p.Rq_Date == Calendar1.SelectedDate && Pa.ID_Patient == pid
                               select servic;
            foreach (var Or in test_history)
            {

                TextWBS.Text = Or.WBS.ToString();
                TextNeutro.Text = Or.Neutro.ToString();
                TextLympho.Text = Or.Lympho.ToString();
                TextMono.Text = Or.Mono.ToString();
                TextEosino.Text = Or.Eosino.ToString();
                TextBaso.Text = Or.Baso.ToString();
                TextBands.Text = Or.Bands.ToString();
                TextRCB.Text = Or.RBC.ToString();
                TextHemo.Text = Or.Hemoglobin.ToString();
                TextHema.Text = Or.Hematocrit.ToString();
                TextMCV.Text = Or.MCV.ToString();
                TextMCH.Text = Or.MCH.ToString();
                TextMCHC.Text = Or.MCHC.ToString();
                TextRDW.Text = Or.RDW.ToString();
                TextPlate.Text = Or.Platelets.ToString();




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