<%@ Page Title ="Login" Language="C#" MasterPageFile ="~/Home.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>
<asp:Content ID ="Login_Head" runat ="server" ContentPlaceHolderID = "Head_Home">
</asp:Content>
    
<asp:Content ID = "Login_Body" runat ="server" ContentPlaceHolderID ="Body_Home" >
    <h2>Home Login</h2>
    <p> if you dont have an account <asp:HyperLink ID="hl_Reg_Login_Page" runat ="server" >Register</asp:HyperLink> Register here</p>
    <table id = "tbl_Login_Login_Page">
        <tr>
            <td><asp:Label ID = "lbl_uName_Login_Page" runat ="server" Text ="User Name" ></asp:Label>
            </td>
            <td><asp:TextBox ID="txt_uName_Login_Page" runat ="server"></asp:TextBox>
            </td>
            <td><asp:Label ID="lbl_erruName_Loging_Page" runat ="server" ></asp:Label>
            </td>
        </tr>
         <tr>
            <td><asp:Label ID = "lbl_pass_Loging_Page" runat ="server" Text ="Password" ></asp:Label>
            </td>
            <td><asp:TextBox ID="txt_pass_Loging_Page" runat ="server" TextMode = "Password"></asp:TextBox>
            </td>
            <td><asp:Label ID="lblerrPas_Login_Page" runat ="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td><asp:Button ID ="btn_Login_Login_Page" runat ="server" Text ="Login" />
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
            </td>
            <td><asp:HyperLink ID="hl_for_Login_Page" runat="server" >Forget Password ? </asp:HyperLink>
            </td>
            <td></td>
        </tr>
      </table>
    
</asp:Content>
