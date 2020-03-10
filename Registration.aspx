<%@ Page Title="Registration" Language="C#" MasterPageFile="~/CliffordMasterPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CliffordSchool.Security.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: x-large; color: #0066FF; width: 799px;">
    
        Student&#39;s Exam and Application<br />
    
        Registration Page</div>
    <table class="style1" style="width: 804px">
        <tr>
            <td class="style7">
                <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtFullName" runat="server" TabIndex="1" Width="300px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtFullName" ErrorMessage="Full name cannot be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtUsername" runat="server" TabIndex="2" Width="300px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="User name cannot be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtPassword" runat="server" TabIndex="3" Width="300px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Password cannot be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Minimum length must be 6" 
                    ForeColor="Red" ValidationExpression="[0-9a-zA-Z]{6,}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtConfirmPassword" runat="server" TabIndex="4" Width="300px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtConfirmPassword" 
                    ErrorMessage="Confirmed Password cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtEmail" runat="server" TabIndex="5" Width="300px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Email cannot be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Incorrect email format" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label6" runat="server" Text="Country"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="drpCountry" runat="server" CausesValidation="True" 
                    TabIndex="6">
                    <asp:ListItem Selected="True" Value="--select one--"></asp:ListItem>
                    <asp:ListItem Value="Nepal"></asp:ListItem>
                    <asp:ListItem Value="USA"></asp:ListItem>
                    <asp:ListItem Value="Japan"></asp:ListItem>
                    <asp:ListItem Value="China"></asp:ListItem>
                    <asp:ListItem Value="India"></asp:ListItem>
                    <asp:ListItem Value="Peru"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="drpCountry" ErrorMessage="Country must be selected" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    TabIndex="7" Text="Submit" />
&nbsp;&nbsp;
                <input id="btnReset" tabindex="8" type="reset" value="Reset" onclick="return btnReset_onclick()" /> |
                <asp:HyperLink ID="lnkLogin" runat="server" ForeColor="Blue" 
                    NavigateUrl="~/Security/Log_In.aspx">Login Page</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
