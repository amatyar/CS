<%@ Page Title="" Language="C#" MasterPageFile="~/CliffordMasterPage.Master" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="CliffordSchool.Forms.Quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Table ID="Table1" runat="server" Width="919px" Height="160px">
    </asp:Table>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        onclick="btnSubmit_Click" />
        <div id ="displaysection" runat ="server" >
        
        </div>
</asp:Content>
