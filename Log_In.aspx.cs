using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Log_In : System.Web.UI.Page
{
    DataClassesDataContext Database = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string UserName = this.UserName.Text;
        string Password = this.PassWord.Text;
        string WorkType = this.DropDownList1.SelectedValue;
        UserTable user = Class1.GetUser(UserName);
        if (Class1.ValidateUser(UserName, Password, WorkType))
        {
            
                this.Session["UserName"] = UserName;
                this.Session["Role"] = WorkType;
                this.Response.Redirect("~/Home.aspx");
                
                
                
        }   
          
            else
            {
                ErrorLabel.Visible = true;
            }
        }
 
}