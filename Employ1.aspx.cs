using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string N = this.Name.Text;
        string Fat = this.Father.Text;
        string SarName = this.SarN.Text;
        string MotherNT = this.Mother.Text;
        string PB = this.PBirth.Text;
        string BD = this.txtDate.Text;

        DateTime BirthDate = Convert.ToDateTime(BD);
        string Add = this.Address.Text;
        string PHone = this.Phone.Text;
        string MoPhone = this.MoPhone.Text;
        string sec = this.Sec.Text;
        string con = this.Con.Text;

        string Gender = string.Empty;
        if (M.Checked)
        {
            Gender = "Male";


        }
        if (F.Checked)
        {
            Gender = "Female";

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


        string DID = this.DateId.Text;
        DateTime IDD = Convert.ToDateTime(DID);
        string Notional = this.Notional.Text;
        string Join_D = this.Join_Date.Text;
        DateTime joinda = Convert.ToDateTime(Join_D);


        /*AddEmployee(string Name, string Father_Name, string SarName, string Mother_Name_Title,
        string BirthPlace, DateTime BirthDate, string Address, string Phone,
        string Mo_Phone, string Status, string SECRETARIAT, string Constraint, DateTime DATE_id,
        string NOTIONAL_NO, string Gender, DateTime join)*/
        Class1.AddEmployee(N, Fat, SarName, MotherNT, PB, BirthDate, Add, PHone, MoPhone, Statu, sec, 
            con, IDD, Notional, Gender, joinda);

     


        DataClassesDataContext Database = new DataClassesDataContext();




        int ide = (from aa in Database.Employees orderby aa.E_ID descending select aa.E_ID).First();

        Session["eeid"] = ide;
        string name = Name.Text + " " + Father.Text + " " + SarN.Text;
        //  txtname.Text = name;
        Session["eename"] = name;


        Response.Redirect("~/Successful_new_emp.aspx");
    }
  
}