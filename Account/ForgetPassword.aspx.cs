﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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