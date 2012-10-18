<%@ Page Title ="Registration" Language="C#" MasterPageFile ="~/Home.Master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Account_Registration" %>
<asp:Content ID ="Registration_Head" runat ="server" ContentPlaceHolderID = "Head_Home">
</asp:Content>
   
<asp:Content ID = "Registration_Body" runat ="server" ContentPlaceHolderID ="Body_Home" >
   
    <h2>Home Restraton</h2>
    <table id = "tbl_Reg_Reg_Page">
        <tr>
            <td class ="tbl_lbl_Reg"><asp:Label ID = "lbl_uName_Reg_Page" runat ="server" Text ="User Name" ></asp:Label>
            </td>
            <td><asp:TextBox ID="txt_uName_Reg_Page" runat ="server"></asp:TextBox>
            </td>
            <td class ="err_Reg"><asp:Label ID="lbl_erruName_Reg_Page" runat ="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class ="tbl_lbl_Reg"><asp:Label ID = "lbl_eMail_Reg_Page" runat ="server" Text ="E Mail ID" ></asp:Label>
            </td>
            <td><asp:TextBox ID="txt_eMail_Reg_Page" runat ="server"></asp:TextBox>
            </td>
            <td class ="err_Reg"><asp:Label ID="lbl_erreMail_Reg_Page" runat ="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class ="tbl_lbl_Reg"><asp:Label ID = "lbl_pass_Reg_Page" runat ="server" Text ="Password" ></asp:Label>
            </td>
            <td><asp:TextBox ID="txt_pass_Reg_Page" runat ="server" TextMode = "Password"></asp:TextBox>
            </td>
            <td class ="err_Reg"><asp:Label ID="lblerrPas_Reg_Page" runat ="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class ="tbl_lbl_Reg"><asp:Label ID = "lbl_conPas_Reg_Page" runat ="server" Text ="Confirm Password" ></asp:Label>
            </td>
            <td><asp:TextBox ID="txt_ConPas_Reg_Page" runat ="server" TextMode ="Password"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class ="tbl_lbl_Reg">
            </td>
            <td><asp:Button ID ="btn_Reg_Reg_Page" runat ="server" Text ="Register" OnClientClick ="return validate();" OnClick="btn_Reg_Reg_Page_Click" />
            </td>
            <td></td>
        </tr>
    </table>
</asp:Content>
