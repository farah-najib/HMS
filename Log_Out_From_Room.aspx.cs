using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Log_Out_From_Room : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["idss"] == null &&Session["roomno"] == null &&Session["pname"] == null )
            {
                Session["idss"] = "";
                Session["roomno"] = "";
                Session["pname"] = "";

            }
            else
            {
               
                TextBox1.Text = Session["idss"].ToString();
                TextBox3.Text = Session["roomno"].ToString();
                TextBox2.Text = Session["pname"].ToString();
                
            }
        }
        


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
        DataClassesDataContext Database = new DataClassesDataContext();
  
        int no_r = int.Parse(Session["roomno"].ToString());
        int pwww = int.Parse(Session["idss"].ToString());
        DateTime adml = DateTime.Now;
        string  GeLOG = DropDownList1.SelectedValue;
      string Presc = TextBox7.Text;
       float   Tempreture = float.Parse(TextBox4.Text);
       float The_pati_pulse = float.Parse(TextBox5.Text);
       float Pressure_pa = float.Parse(TextBox6.Text);
        Room rr = Database.Rooms.Single(R => R.Room_No_ == no_r);
        Adm aa = Database.Adms.Single(n => n.Patient_Id == pwww && n.Adm_satats=="Yes" &&n.Room_No_==no_r);
        rr.Room_Status = "NoOccupy";
        aa.Adm_satats = "No";
        Database.SubmitChanges();
        

       // Log_Room lRoom(int pid, int roomno, float t, float pu, float p, string pp ,string codelog, DateTime logdate)
        Class1.lRoom(pwww, no_r, Tempreture, The_pati_pulse, Pressure_pa, Presc, GeLOG, adml);
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