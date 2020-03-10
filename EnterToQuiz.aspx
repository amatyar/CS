<%@ Page Title="" Language="C#" MasterPageFile="~/CliffordMasterPage.Master" AutoEventWireup="true" CodeBehind="EnterToQuiz.aspx.cs" Inherits="CliffordSchool.Forms.EnterToQuiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Image ID="Image1" runat="server" Height="163px" Width="192px" />
   <p>
   <asp:Label ID="lblSuccess" runat="server"></asp:Label></p>
   <p align="center"><br />Welcome to the eCommerce Test for License</p>
    <p align="center">You will be awarded 1 mark for every correct answer and no mark will be deducted for 
    a worng answer.</p>
    <br />
    <p align="center"> you have 60 seconds of time .</p>
    <p align="center"> Pleaser click the START button to begin the test.</p>
    <p align="center"> 
        <asp:Button ID="btnStart" runat="server" onclick="btnStart_click" 
            Text="START QUIZ" />
    </p>
    
    
    
    
    
    
    <p align="center"> 
    
    
     All the best!!!
</asp:Content>
