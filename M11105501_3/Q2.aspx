<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Q2.aspx.cs" Inherits="M11105501_3.Q2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="value" DataValueField="ID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:M11105501ConnectionString %>" SelectCommand="SELECT * FROM [list_1]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="continent" HeaderText="continent" SortExpression="continent" />
            <asp:BoundField DataField="numComputer" HeaderText="numComputer" ReadOnly="True" SortExpression="numComputer" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:M11105501ConnectionString %>" SelectCommand="select continent,count(SystemID) as numComputer from Detail_1
where ListID=@LID
group by continent 
order by count(SystemID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="LID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
