using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class successful : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["ppid"] == null && Session["ppid"] == null)
            {

                Session["ppid"] = "";
                Session["ppname"] = "";

            }
            else
            {

                IDpp.Text = Session["ppid"].ToString();

                Namepp.Text = Session["ppname"].ToString();

            }
        }

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admission .aspx");
    }
}