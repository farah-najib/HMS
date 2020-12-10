using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ord_Lab : System.Web.UI.Page
{
    DataClassesDataContext Database = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["idss"] == null && Session["pname"] == null)
            {
                Session["idss"] = null;
                Session["pname"] = null;
                ImageButton3.Enabled = true;

            }
            else
            {

                ID.Text = Session["idss"].ToString();
                Nam.Text = Session["pname"].ToString();

            }

        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (ID.Text == "")
        { }
        else
        {
            int p = int.Parse(Session["idss"].ToString());
            int erp = 1;

            // Order Add_Lab_or(int p, int e, DateTime r, DateTime t,string stu ,string note, int te)
            string s = string.Empty;
            string sr = string.Empty;
            DateTime r = DateTime.Now;
            DateTime t = Convert.ToDateTime(t_d.Text);
            string note = Detail.Text;
            string stu = "Request";
            string payment = "NO";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {

                if (CheckBoxList1.Items[i].Selected)
                {
                    string str = CheckBoxList1.Items[i].Text;
                    var ID_Test_O = (from T in Database.Test_Names
                                     where T.Test_Name1 == str
                                     select T.ID_Test).Single().ToString();
                    int te = int.Parse(ID_Test_O);
                    Class1.Add_Lab_or(p, erp, r, t, stu, note, te,payment);
                   
                }

            }


            for (int i = 0; i < CheckBoxChemistry.Items.Count; i++)
            {

                if (CheckBoxChemistry.Items[i].Selected)
                {
                    string str = CheckBoxChemistry.Items[i].Text;
                    var ID_Test_O = (from T in Database.Test_Names
                                     where T.Test_Name1 == str
                                     select T.ID_Test).Single().ToString();
                    int te = int.Parse(ID_Test_O);
                    Class1.Add_Lab_or(p, erp, r, t, stu, note, te, payment);
                   

                }

            }

            MY_Calculate.UNvisibleCheckbox(Page.Controls);
            MY_Calculate.UNvisibleInputs(Page.Controls);
            MY_Calculate.UNvisiblelables(Page.Controls);
            massege.Visible = true;
            ImageButton1.Visible = false;
            Refersh.Visible = false;
            ImageButton2.Visible = true;
            ImageButton3.Visible = false;


        }
    }
    protected void Refersh_Click(object sender, ImageClickEventArgs e)
    {
        Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
    }
    protected void backto_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Show_Occupy_Room.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Shearch_Patient.aspx");
    }
}