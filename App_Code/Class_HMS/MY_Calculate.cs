using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for MY_Calculate
/// </summary>
public class MY_Calculate
{
	public MY_Calculate()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string calculateAge(DateTime birthDate, DateTime now)
    {
        //BDay is in different year (age > 1)
        int age = now.Year - birthDate.Year;
        if (now.Month < birthDate.Month || (now.Month == birthDate.Month && now.Day < birthDate.Day)) age--;

        if (age == 0)
        {
            //Bday is in same year
            age = now.Month - birthDate.Month;
            if (now.Month < birthDate.Month || (now.Month == birthDate.Month && now.Day < birthDate.Day)) age--;

            return age.ToString() + " months";
        }
        if (age == 0)
        {
            //Bday is in the same month
            age = now.Day - birthDate.Day;
            if (now.Month < birthDate.Month || (now.Month == birthDate.Month && now.Day < birthDate.Day)) age--;

            return age.ToString() + " days";
        }
        return age.ToString();
    }

    public static void ClearInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            ClearInputs(ctrl.Controls);
        }
    }




    public static void UNvisibleInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Visible = false;
            UNvisibleInputs(ctrl.Controls);
        }
    }




    public static void UNenableInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Enabled = false;
            UNenableInputs(ctrl.Controls);
        }
    }
    public static void UNvisibleCheckbox(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is CheckBoxList)
                ((CheckBoxList)ctrl).Visible = false;
            UNvisibleCheckbox(ctrl.Controls);
        }
    }


    public static void visibleInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Visible = true;
            visibleInputs(ctrl.Controls);
        }
    }

    public static void UNvisiblelables(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is Label)
                ((Label)ctrl).Visible = false;
            UNvisiblelables(ctrl.Controls);
        }
    }

    public static void visiblelables(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is Label)
                ((Label)ctrl).Visible = true;
            visiblelables(ctrl.Controls);
        }
    }

    public static void UNvisibleDropDownList(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is  DropDownList)
                ((DropDownList)ctrl).Visible = false;
            UNvisibleDropDownList(ctrl.Controls);
        }
    }


    public static void visibleDropDownList(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is DropDownList)
                ((DropDownList)ctrl).Visible = true;
            visibleDropDownList(ctrl.Controls);
        }
    }




    public static void PrintWebControl(Control ControlToPrint)
    {
        StringWriter stringWrite = new StringWriter();
        System.Web.UI.HtmlTextWriter htmlWrite = new System.Web.UI.HtmlTextWriter(stringWrite);
        if (ControlToPrint is WebControl)
        {
            Unit w = new Unit(100, UnitType.Percentage);
            ((WebControl)ControlToPrint).Width = w;
        }
        Page pg = new Page();
        pg.EnableEventValidation = false;
        HtmlForm frm = new HtmlForm();
        pg.Controls.Add(frm);
        frm.Attributes.Add("runat", "server");
        frm.Controls.Add(ControlToPrint);
        pg.DesignerInitialize();
        pg.RenderControl(htmlWrite);
        string strHTML = stringWrite.ToString();
        HttpContext.Current.Response.Clear();
        HttpContext.Current.Response.Write(strHTML);
        HttpContext.Current.Response.Write("<script>window.print();</script>");
        HttpContext.Current.Response.End();
    }

}