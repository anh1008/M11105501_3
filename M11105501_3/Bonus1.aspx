<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bonus1.aspx.cs" Inherits="M11105501_3.Bonus1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Find &amp; sort each system's max Rpeak in all lists"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="SystemID" HeaderText="SystemID" SortExpression="SystemID" />
            <asp:BoundField DataField="MaxRpeak" HeaderText="MaxRpeak" ReadOnly="True" SortExpression="MaxRpeak" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:M11105501ConnectionString %>" SelectCommand="SELECT SystemID, Max(Rpeak) as MaxRpeak FROM Detail
group by SystemID
order by Max(Rpeak) DESC
"></asp:SqlDataSource>
</asp:Content>
