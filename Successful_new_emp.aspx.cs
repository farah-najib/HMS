using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Successful_new_emp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["eeid"] == null && Session["eename"] == null)
        {

            Session["eeid"] = "";
            Session["eename"] = "";

        }
        else
        {

            IDee.Text = Session["eeid"].ToString();

            Nameee.Text = Session["eename"].ToString();

        }
    }
    protected void Add_new_Click(object sender, ImageClickEventArgs e)
    {
        Save.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        UN.Visible = true;
        PW.Visible = true;
        R.Visible = true;
    }
    protected void back_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
    protected void Save_Click(object sender, ImageClickEventArgs e)
    {
        int id = int.Parse(Session["eeid"].ToString());
        string user = UN.Text;
        string pass = PW.Text;
        string role = R.SelectedItem.Value;

        Class1.AddUserLog(id, user, pass, role);


        MY_Calculate.UNvisibleInputs(Page.Controls);
        MY_Calculate.UNvisiblelables(Page.Controls);
        MY_Calculate.UNvisibleDropDownList(Page.Controls);
        s.Visible = true;

       // Response.Redirect("~/Home.aspx");
    }
}