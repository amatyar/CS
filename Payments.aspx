<%@ Page Title="Payments" Language="C#" MasterPageFile="~/CliffordMasterPage.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="CliffordSchool.Account.Payments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<strong><span style="text-decoration: underline">
    Security Checkout<br />
        </span></strong>
    <hr />
        <table>
            <tr>
                <td style="width: 98px; text-align: right">
                    Name:</td>
                <td style="width: 280px">
                    <asp:TextBox ID="txtFName" runat="server" Width="110px"></asp:TextBox>
                    <asp:TextBox ID="txtLName" runat="server" Width="134px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 98px; text-align: right">
                    Billing Address:</td>
                <td style="width: 280px">
                    <asp:TextBox ID="txtStreet" runat="server" Width="256px">Street</asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 98px">
                </td>
                <td style="width: 280px">
                    <asp:TextBox ID="txtApt" runat="server" Width="256px">Apt,Suite,Bldg(Optional)</asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 98px">
                </td>
                <td style="width: 280px">
                    <asp:DropDownList ID="ddlCountry" runat="server" Width="185px" EnableTheming="True">
                        <asp:ListItem>United States</asp:ListItem>
                        <asp:ListItem>Nepal</asp:ListItem>
                        <asp:ListItem>Pakistan</asp:ListItem>
                        <asp:ListItem>Iran</asp:ListItem>
                        <asp:ListItem>Canada</asp:ListItem>
                        <asp:ListItem>Japan</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 98px">
                </td>
                <td style="width: 280px">
                    <asp:TextBox ID="txtCity" runat="server" 
                        Width="185px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 98px">
                </td>
                <td style="width: 280px">
                    <asp:DropDownList ID="ddlStates" runat="server" Width="135px">
                        <asp:ListItem>MA</asp:ListItem>
                        <asp:ListItem>CA</asp:ListItem>
                        <asp:ListItem>LA</asp:ListItem>
                        <asp:ListItem>RI</asp:ListItem>
                        <asp:ListItem>TX</asp:ListItem>
                        <asp:ListItem>NH</asp:ListItem>
                        <asp:ListItem>CT</asp:ListItem>
                        <asp:ListItem>MI</asp:ListItem>
                        <asp:ListItem>ME</asp:ListItem>
                        <asp:ListItem>IL</asp:ListItem>
                        <asp:ListItem>NY</asp:ListItem>
                        <asp:ListItem>VA</asp:ListItem>
                        <asp:ListItem>DC</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="txtZipCode" runat="server" Width="127px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 98px; height: 26px; text-align: right">
                    Phone:&nbsp;</td>
                <td style="width: 280px; height: 26px">
                    <asp:TextBox ID="txtPhone" runat="server"  Width="256px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 98px; text-align: right">
                    Card Name</td>
                <td style="width: 280px">
                    <asp:DropDownList ID="ddlCName" runat="server" Width="135px">
                        <asp:ListItem>Master Card</asp:ListItem>
                        <asp:ListItem>Visa Card</asp:ListItem>
                        <asp:ListItem>American Express</asp:ListItem>
                        <asp:ListItem>Dinner Club</asp:ListItem>
                        <asp:ListItem>Debit Card</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 98px; text-align: right">
                    Card Number:</td>
                <td style="width: 280px">
                    <asp:TextBox ID="txtCNumber" runat="server"  Width="256px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 98px; height: 18px; text-align: right">
                    Expires:&nbsp;</td>
                <td style="width: 280px; height: 18px">
                    &nbsp; &nbsp;
                    <asp:DropDownList ID="ddlMonths" runat="server" Width="62px">
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp; &nbsp; /&nbsp;
                    <asp:DropDownList ID="ddlYears" runat="server" Width="67px">
                        
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 98px; text-align: right">
                    Security Code:</td>
                <td style="width: 280px">
                    <asp:TextBox ID="txtSCode" runat="server"  Width="66px"></asp:TextBox><span
                        style="font-size: 7pt">The last 3 numbers on the back of card</span></td>
            </tr>
            <tr>
                <td style="width: 98px; text-align: right">
                    Amount:</td>
                <td style="width: 280px">
                    <asp:TextBox ID="txtAmount" runat="server" Width="82px" style="text-align: right">00.00</asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 98px">
                </td>
                <td style="width: 280px; text-align: center">
                    &nbsp;<span style="font-size: 7pt"></span><asp:Button ID="btnContinue" runat="server"
                        Text="Continue" OnClick="btnContinue_Click" />&nbsp;  &nbsp;
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" /><br />
                    <span style="font-size: 8pt"></span>
                </td>
            </tr>
        </table>
        <span style="font-size: 8pt">
            *All filds required unless otherwise stated.</span>
        <hr />
</asp:Content>
