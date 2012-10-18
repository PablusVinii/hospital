using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Account_Registration : System.Web.UI.Page
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
    protected void btn_Reg_Reg_Page_Click(object sender, EventArgs e)
    {
        string uname = txt_uName_Reg_Page.Text;
        string email = txt_eMail_Reg_Page.Text;
        string pass =  txt_pass_Reg_Page.Text;
        string conpass =  txt_ConPas_Reg_Page.Text;
        if (uname == "")
        {
            lbl_erruName_Reg_Page.Text = "*";
        }
        if (email == "")
        {
            lbl_erreMail_Reg_Page.Text = "*";
        }
        if ((pass == "") || (conpass == ""))
        {
            lblerrPas_Reg_Page.Text = "Enter Password";
        }
        else
        {
            if (pass != conpass)
            {
                lblerrPas_Reg_Page.Text = "Password Mismatch";
            }
            else
            {
                // Storing Procedure
                string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString.ToString();
                SqlConnection con = new SqlConnection(constr);
                string user_check = "SELECT PID FROM Patients WHERE PUName ='" + uname + "'";
                string mail_check = "SELECT PID FROM Patients WHERE PMail ='" + email + "'";
                SqlCommand check_user = new SqlCommand(user_check, con);
                SqlCommand check_mail = new SqlCommand(mail_check, con);
                con.Open();
                int x = Convert.ToInt16(check_user.ExecuteScalar());
                
                if(x!=0)
                {
                    lbl_erruName_Reg_Page.Text = "Username Note available";
                    con.Close();
                }
                else
                {
                    x = Convert.ToInt16(check_mail.ExecuteScalar());
                    if(x!=0)
                    {
                        lbl_erreMail_Reg_Page.Text = "Email already registered";
                        con.Close();
                    }
                    else
                    {
                        SqlCommand stor = new SqlCommand("Create_Patient", con);
                        stor.CommandType = CommandType.StoredProcedure;
                        stor.Parameters.AddWithValue("@PUName", uname);
                        stor.Parameters.AddWithValue("@PPass", pass);
                        stor.Parameters.AddWithValue("@PMail", email);
                        stor.ExecuteNonQuery();
                        con.Close();
                        Response.Write(@"<script language='javascript'>alert('Registration Successful, Please Login')</script>");
                        ClientScriptManager CSM = Page.ClientScript;
                        Response.Write(@"<script> window.location.href='Login.aspx' </script>");
                    }

                }
            }
        }
    }
}