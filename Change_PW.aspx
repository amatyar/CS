<%@ Page Title="" Language="C#" MasterPageFile="~/CliffordMasterPage.Master" AutoEventWireup="true" CodeBehind="Change_PW.aspx.cs" Inherits="CliffordSchool.Security.Change_PW" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="style1">
        <strong>Change Password</strong></div>
    <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtusername" ErrorMessage="Username cannot be empty" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblPassword" runat="server" Text="Old Password:"></asp:Label>
    &nbsp;
    <asp:TextBox ID="txtOldPassword" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtOldPassword" ErrorMessage="Password cannot be empty" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblPassword0" runat="server" Text="New Password:"></asp:Label>
    <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtNewPassword" ErrorMessage="New Password cannot be empty" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="btnChange" runat="server" Text="Change" 
        onclick="btnChange_Click1" />
    &nbsp;
    <input id="Reset1" type="reset" value="Reset" onclick="return Reset1_onclick()" />
</asp:Content>
