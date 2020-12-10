using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BMI : System.Web.UI.Page
{
    DataClassesDataContext Database = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["idss"] == null && Session["pname"] == null)
            {

                Session["idss"] = "";
                Session["pname"] = "";

            }
            else
            {

                TextBox3.Text = Session["idss"].ToString();

                TextBox4.Text = Session["pname"].ToString();

            }

        }



        Labelerr.Visible = false;
        TextBox1.Visible = false;
        TextBox2.Visible = false;
        Label3.Visible = false;

        Label1.Visible = false;


    }
  
   
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (txtWeight.Text == "" || txth.Text == "")
        { Labelerr.Visible = true; }
        else
        {
            double weight = Convert.ToDouble(txtWeight.Text);

            double height = Convert.ToDouble(txth.Text);

            double h = height * height;
            double bmi = 703.0 * (weight / h);
            string BMI_description = string.Empty;
            if (bmi < 16.5)
                BMI_description = "severely underweight";
            else if (bmi >= 16.5 && bmi < 18.5) BMI_description = "underweight";
            else if (bmi >= 18.5 && bmi < 25) BMI_description = "normal";
            else if (bmi >= 25 && bmi <= 30)
                BMI_description = "overweight";
            else if (bmi > 30 && bmi <= 35)
                BMI_description = "obese";
            else if (bmi > 35 && bmi <= 40)
                BMI_description = "clinically obese";
            else BMI_description = "morbidly obese";
           
            Label3.Visible = true;
            TextBox1.Visible = true;
            TextBox1.Text = bmi.ToString();
            Label1.Visible = true;
            TextBox2.Visible = true;
            TextBox2.Text = BMI_description;
            
            Ser servic = new Ser();
            servic.Patient_ID = int.Parse(Session["idss"].ToString());
            servic.Test_ID = 26;
            servic.Weight = weight;
            servic.Height = height;
            servic.Date_Service = DateTime.Now;
            Database.Sers.InsertOnSubmit(servic);
            Database.SubmitChanges();
            Session["idss"] = null;
            Session["pname"] = null;
        }




       
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/ABL.aspx");
    }
    protected void gotohome_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        MY_Calculate.ClearInputs(Page.Controls);
    }
  
}