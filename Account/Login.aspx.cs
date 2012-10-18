using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        hl_for_Login_Page.NavigateUrl = "~/Account/ForgetPassword.aspx";
        hl_Reg_Login_Page.NavigateUrl = "~/Account/Registration.aspx";
        if (Session["key"] != null)
        {
            Response.Redirect("~/Doctors.aspx");
        }
        else
        {
            ((Home)(Master)).Status_String = "Guest";
        }
    }
}