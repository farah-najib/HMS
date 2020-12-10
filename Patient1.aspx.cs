using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




public partial class Pa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }



    protected void R_Click(object sender, EventArgs e)
    { Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true); }

   
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Name = this.NameP.Text;
        string Father = this.Father1.Text;
        string SarName = this.SarN.Text;
        string MotherNT = this.Mother.Text;
        string PB = this.PBirth.Text;
       string BD=this.txtDate.Text;
         
       DateTime BirthDate =Convert.ToDateTime(BD);
       MY_Calculate cal_age = new MY_Calculate();
       string age = cal_age.calculateAge(BirthDate, DateTime.Now);
        string Add = this.Address.Text;
        string PHone = this.Phone.Text;
        string MoPhone = this.MoPhone.Text;
        string sec = this.Sec.Text;
        string con = this.Con.Text;
        string DID = this.DateId.Text;
        string Gender = string.Empty;
        if (M.Checked)
        {
        Gender = "Male";

            
        }
        if (F.Checked) 
        {
            Gender = "Female";
 
        }

        string B = string.Empty;
        if (blood_g.SelectedItem.Value == "None")
        {
            B = "None";
        }
       
        if (blood_g.SelectedItem.Value == "A +")
        {
            B = "A +";
        }
        if (blood_g.SelectedItem.Value == "A -")
        {
            B = "A -";
        }

        if (blood_g.SelectedItem.Value == "B +")
        {
            B = "A -";
        }

        if (blood_g.SelectedItem.Value == "B -")
        {
            B = "B -";
        }


        if (blood_g.SelectedItem.Value == "O +")
        {
            B = "O +";
        }


     if (blood_g.SelectedItem.Value == "O -")
        {
            B = "O -";
        }

     if (blood_g.SelectedItem.Value == "AB +")
        {
            B = "AB +";
        }

     if (blood_g.SelectedItem.Value == "AB -")
     {
         B = "AB -";
     }


     string Statu = string.Empty;

        if (Status.SelectedItem.Value == "Single")
        {
            Statu = "Single";
        }

        if (Status.SelectedItem.Value == "Married")
        {
            Statu = "Married";
        }




        DateTime IDD = Convert.ToDateTime(null); ;
        if (!string.IsNullOrEmpty(DID.Trim()))
        {
            IDD = Convert.ToDateTime(DID);
        }
       
      
        string Notional = this.Notional.Text;

       Class1.AddPatient(Name, Father, SarName, MotherNT, PB, BirthDate, Add, PHone, MoPhone, Statu, sec, con, IDD, Notional, Gender, B, age);

       
        DataClassesDataContext Database = new DataClassesDataContext();
        
       


        int id = (from aa in Database.Patients orderby aa.ID_Patient descending select aa.ID_Patient).First();
        string ss = id.ToString();
      //  txt.Text = ss;
        Session["ppid"] = id;
        string name = NameP.Text + " " + Father1.Text + " " + SarN.Text;
      //  txtname.Text = name;
        Session["ppname"] = name;
        var show_blood = (from p in Database.Patients
                          where p.ID_Patient == id
                          select p.Blood_Group).Single().ToString();
        if (show_blood == "None")
        {
            int testbloodid = 6;
            DateTime reqdate = DateTime.Now;
            DateTime testdate = DateTime.Now;
            string note = "patient no know blood group";

            string stu = "Request";
            string pyment="no";
         
            string Usr_name = Session["idemp"].ToString();

            var Name_emp = (from L in Database.UserTables
                            join ee in Database.Employees
                           on L.EM_ID equals ee.E_ID
                            where L.UserName == Usr_name
                            select ee.E_ID).Single().ToString();
            int erp = int.Parse(Name_emp);
            Class1.Add_Lab_or(id, erp, reqdate, testdate, stu, note, testbloodid,pyment);

        }
        string script1 = @"<script language=""javascript"">
alert('System Order Blood Group Test For Patient');
</script>;";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1",
                        script1);
        string urlsucessful = "successful.aspx";

        Response.AppendHeader("REFRESH", "5;URL=" + urlsucessful);

        
       // pup.ShowPopupWindow();
    }

   
   
}