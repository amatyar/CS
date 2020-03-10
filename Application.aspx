<%@ Page Title="" Language="C#" MasterPageFile="~/CliffordMasterPage.Master" AutoEventWireup="true" CodeBehind="Application.aspx.cs" Inherits="CliffordSchool.Forms.Application" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table>
   <tr><td align="center" style="width: 150px"  colspan="3"><h3 style="width: 510px" 
           class="style4">  Welcome To 
       Clifford H. Marshall School&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; License Certification Application 
       for exam</h3>
       </td></tr>
        <tr>
            <td style="margin-left: 160px;" class="style2">
                <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td><td style="margin-left: 160px;" class="style2"><asp:Label ID="lblMidName" runat="server" Text="Middle Name"></asp:Label>
                <asp:TextBox ID="txtMiddleName" runat="server"></asp:TextBox>
              </td><td style="margin-left: 160px;" class="style2">  <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
 <%--               <asp:Image ID="Image2" runat="server" ImageUrl="~/consultant.gif" 
                    Height="126px" Width="138px" />--%>
            </td><td rowspan="4" style="width: 150px">
            <%--<asp:Image ID="Image1" runat="server" Height="163px" Width="192px" />--%>
            <br />
            <asp:FileUpload ID="imageUpload" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 150px; margin-left: 160px;">
                <asp:Label ID="lblStreet" runat="server" Text="Street"></asp:Label>
                <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
              </td><td style="width: 150px; margin-left: 160px;">  <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
             </td><td style="width: 150px; margin-left: 160px;">   <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 150px; margin-left: 160px;">
            <asp:Label ID="lblZipCode" runat="server" Text="Zip Code"></asp:Label>
                <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>
              </td><td style="width: 150px; margin-left: 160px;">  <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
                <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
             </td><td style="width: 150px; margin-left: 160px;">   <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </td>
            
        </tr>
         <tr>
            <td style="width: 150px; margin-left: 160px;">
                <asp:Label ID="lblBirthDate" runat="server" Text="Date of Birth"></asp:Label>
                <asp:TextBox ID="txtBirthDate" runat="server"></asp:TextBox>
              </td><td style="width: 150px; margin-left: 160px;">  <asp:Label ID="lblPin" runat="server" Text="Digit Pin #"></asp:Label>
                <asp:TextBox ID="txtPin" runat="server"></asp:TextBox>
             </td><td style="width: 150px; margin-left: 160px;">   
                 <br />
            </td>
            
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td style="width: 150px; margin-left: 160px;" colspan="2">
                <asp:Label ID="lblEmployer" runat="server" Text="Name Of Employer"></asp:Label>
                <asp:TextBox ID="txtEmployer" runat="server" Width="376px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td style="width: 150px; margin-left: 160px;">
                <asp:Label ID="lblEStreet" runat="server" Text="Street"></asp:Label>
                <asp:TextBox ID="txtEstreet" runat="server"></asp:TextBox>
                </td><td style="width: 150px; margin-left: 160px;"><asp:Label ID="lblECity" runat="server" Text="City"></asp:Label>
                <asp:TextBox ID="txtECity" runat="server"></asp:TextBox>
                </td><td style="width: 150px; margin-left: 160px;"><asp:Label ID="lblEState" runat="server" Text="State"></asp:Label>
                <asp:TextBox ID="txtEState" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; margin-left: 160px;">
                <asp:Label ID="lblEZipCode" runat="server" Text="Zip Code"></asp:Label>
                <asp:TextBox ID="txtEZipCode" runat="server"></asp:TextBox>
                </td><td style="width: 150px; margin-left: 160px;"><asp:Label ID="lblECountry" runat="server" Text="Country"></asp:Label>
                <asp:TextBox ID="txtECountry" runat="server"></asp:TextBox>
               </td><td style="width: 150px; margin-left: 160px;"> <asp:Label ID="lblEPhone" runat="server" Text="Phone"></asp:Label>
                <asp:TextBox ID="txtEPhone" runat="server"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <td align="center" style="width: 150px; margin-left: 160px;">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" 
                    Text="Submit" Width="133px" />&nbsp;
                <br />
                <asp:Label ID="lblMessage" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
