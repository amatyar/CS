<%@ Page Title="" Language="C#" MasterPageFile="~/CliffordMasterPage.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="CliffordSchool.Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="text-align: right; height: 53px; width: 1050px;">
    
        Welcome ,
        <asp:Label ID="lblUsername" runat="server"></asp:Label>
&nbsp;||
        <asp:Button ID="btnLogOut" runat="server" onclick="btnLogOut_Click" 
            Text="Log Out" />
    
        <br />
        <br />
        <br />
    
    </div>
    <p class="style1" style="width: 637px; height: 27px">
        <strong>Welcome To Noon Moon Hill&nbsp; Company Page</strong></p>
    
    
    <p>
        We&nbsp; are issuing new Licensed and renewing old Licenses</p>
    <p>
        Please select&nbsp; below button for issue or renew.</p>
    <asp:Button ID="btnNew" runat="server" onclick="btnNew_Click" Text="New License" />
    <br />
    <br />
    <asp:Button ID="btnRenew" runat="server"  onclick="btnRenew_Click" Text="Renew License" />
    
    
        <br />
</asp:Content>
