<%@ Page Title="" Language="C#" MasterPageFile="~/CliffordMasterPage.Master" AutoEventWireup="true" CodeBehind="Log_In.aspx.cs" Inherits="CliffordSchool.Security.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

 <div style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: x-large; color: #0066FF; width: 799px;">
    
        Student&#39;s Exam and Application<br />
<strong>Login Page</strong></div>
        <br />
        <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
        <asp:TextBox ID="txtusername" runat="server" Width="203px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Username cannot be empty" ForeColor="Red" 
        ControlToValidate="txtusername"></asp:RequiredFieldValidator>
    <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" Width="199px" 
    TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Password cannot be empty" ControlToValidate="txtPassword" 
        ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" 
        onclick="btnLogin_Click" style="height: 26px" />
    &nbsp;
    <input id="Reset1" type="reset" value="Reset" /><br />
    <asp:HyperLink ID="lnkRegister" runat="server" ForeColor="Blue" 
        NavigateUrl="~/Registration.aspx">Register</asp:HyperLink>
&nbsp;&nbsp; |&nbsp;
    <asp:HyperLink ID="lnkForgotPassword" runat="server" ForeColor="Blue" 
        NavigateUrl="~/PasswordRecovery.aspx">Forgot your password</asp:HyperLink>

</asp:Content>
