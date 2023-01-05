<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Q1.aspx.cs" Inherits="M11105501_3.Q1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Region"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
            <asp:BoundField DataField="AVG_Rpeak" HeaderText="AVG_Rpeak" ReadOnly="True" SortExpression="AVG_Rpeak" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:M11105501ConnectionString %>" SelectCommand="SELECT  Region, AVG(Rpeak) as AVG_Rpeak FROM dbo.Detail
group by Region
order by AVG(Rpeak) DESC"></asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" Text="List"></asp:Label>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="List" HeaderText="List" SortExpression="List" />
            <asp:BoundField DataField="AVG_Rpeak" HeaderText="AVG_Rpeak" ReadOnly="True" SortExpression="AVG_Rpeak" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:M11105501ConnectionString %>" SelectCommand="SELECT  List, AVG(Rpeak) as AVG_Rpeak FROM dbo.Detail
group by List
order by AVG(Rpeak) DESC"></asp:SqlDataSource>
</asp:Content>
