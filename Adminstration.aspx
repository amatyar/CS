<%@ Page Title="" Language="C#" MasterPageFile="~/CliffordMasterPage.Master" AutoEventWireup="true" CodeBehind="Adminstration.aspx.cs" Inherits="CliffordSchool.Security.Adminstration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="style1">
    
        Adminstration&nbsp; Page
        <asp:GridView ID="GridView1" runat="server" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
            AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="White" 
            BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
            GridLines="None">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:ButtonField CommandName="Edit" Text="Edit" />
                <asp:ButtonField CommandName="Delete" Text="Delete" />
                <asp:BoundField DataField="Logid" HeaderText="Logid" SortExpression="Logid" />
                <asp:BoundField DataField="FullName" HeaderText="FullName" 
                    SortExpression="FullName" />
                <asp:BoundField DataField="Username" HeaderText="Username" 
                    SortExpression="Username" />
                <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" 
                    SortExpression="PASSWORD" />
                <asp:BoundField DataField="Time_Logged_in" HeaderText="Time_Logged_in" 
                    SortExpression="Time_Logged_in" />
                <asp:BoundField DataField="Time_Logged_Out" HeaderText="Time_Logged_Out" 
                    SortExpression="Time_Logged_Out" />
                <asp:BoundField DataField="Date_Logged_in" HeaderText="Date_Logged_in" 
                    SortExpression="Date_Logged_in" />
                <asp:BoundField DataField="E_MAIL" HeaderText="E_MAIL" 
                    SortExpression="E_MAIL" />
                <asp:BoundField DataField="Country" HeaderText="Country" 
                    SortExpression="Country" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CliffordConnectionString %>" 
            SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
           
    </div>
    
</asp:Content>
