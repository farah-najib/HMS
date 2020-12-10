using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RShift : System.Web.UI.Page
{
    DataClassesDataContext Database = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        string Usr_name = Session["UserName"].ToString();

        var Name_emp = (from L in Database.UserTables
                        join ee in Database.Employees
                       on L.EM_ID equals ee.E_ID
                        where L.UserName == Usr_name
                        select ee.E_NAME + " " + ee.E_FATHER_NAME + " " + ee.E_SARNAME).Single().ToString();
       
        if (!IsPostBack)
        {
            if (Session["idss"] == null && Session["roomno"] == null && Session["pname"] == null)
            {
                Session["idss"] = "";
                Session["roomno"] = "";
                Session["pname"] = "";

            }
            else
            {

                Pid.Text = Session["idss"].ToString();

                Pname.Text = Session["pname"].ToString();
                number.Text = Session["roomno"].ToString();
                int rr = int.Parse(Session["roomno"].ToString());
                var sss = from v in Database.Rooms
                          where v.Room_No_ == rr
                          select new { vvv = v.Floor, vvvv = v.Room_Type };
                if (sss != null)
                {
                    foreach (var Or in sss)
                    {
                        TypeRoom.Text = Or.vvvv.ToString();
                        FloorOfRoom.Text = Or.vvv.ToString();


                    }
                }
            }
        }
    }
    
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        string Usr_name = Session["UserName"].ToString();

        var ID_emp = (from L in Database.UserTables
                      join ee in Database.Employees
                     on L.EM_ID equals ee.E_ID
                      where L.UserName == Usr_name
                      select ee.E_ID).Single().ToString();



        int rn = int.Parse(Session["roomno"].ToString());
        int idp = int.Parse(Session["idss"].ToString());
       
        
        Room rr = Database.Rooms.Single(R => R.Room_No_ == rn);
        Adm aa = Database.Adms.Single(A => A.Patient_Id == idp && A.Adm_satats == "Yes" && A.Room_No_==rn);
        rr.Room_Status = "NoOccupy";
        aa.Adm_satats = "No";
        Database.SubmitChanges();
        int p = int.Parse(Session["idss"].ToString());
        int emp = int.Parse(ID_emp);
        string room_no = DropDownList3.SelectedItem.Value;
        int no_r = int.Parse(room_no);
        number.Text = room_no;
        DateTime adm = DateTime.Now;
        Class1.Admission(p, emp, no_r, adm);
   
        Room rrs = Database.Rooms.Single(R => R.Room_No_ == no_r);
        rrs.Room_Status = "Occupy";
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
        Response.Redirect("~/Show_Occupy_Room.aspx");
    }
}