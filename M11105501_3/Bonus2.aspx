<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bonus2.aspx.cs" Inherits="M11105501_3.Bonus2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Find &amp; sort the average Rank of each system"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="SystemID" HeaderText="SystemID" SortExpression="SystemID" />
            <asp:BoundField DataField="AVGRank" HeaderText="AVGRank" ReadOnly="True" SortExpression="AVGRank" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:M11105501ConnectionString %>" SelectCommand="SELECT SystemID, AVG(Rank) as AVGRank FROM TOP500
group by SystemID
order by AVG(Rank) DESC
"></asp:SqlDataSource>
</asp:Content>
