<%@ Page Title="" Language="C#" MasterPageFile="~/CliffordMasterPage.Master" AutoEventWireup="true" CodeBehind="PW_Recovery.aspx.cs" Inherits="CliffordSchool.Security.PW_Recovery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="style1">
    
        <strong>Password Recovery Page</strong></div>
    <p>
        <span class="Apple-style-span" 
            style="color: rgb(0, 0, 128); font-family: Verdana; font-size: 18px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none; ">
        Please enter your username or email address and click &quot;Send Password&quot; to receive 
        your password by email</span></p>
        <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtusername" runat="server" Width="191px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Username cannot be empty" ForeColor="Red" 
        ControlToValidate="txtusername"></asp:RequiredFieldValidator>
    <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server" Width="194px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Email cannot be empty" ControlToValidate="txtEmail" 
        ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
    <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Send Password" 
        onclick="btnSubmit_Click" style="height: 26px" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Reset1" type="reset" value="Reset" /><br />
    <asp:HyperLink ID="lnkBack" runat="server" ForeColor="Blue" 
        NavigateUrl="~/Login.aspx">Back to Login Page</asp:HyperLink>
    
</asp:Content>
