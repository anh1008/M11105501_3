<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Q5.aspx.cs" Inherits="M11105501_3.Q5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="value" DataValueField="value">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:M11105501ConnectionString %>" SelectCommand="SELECT * FROM [list_1]"></asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="MIN"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="MAX"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Search" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="SystemID" HeaderText="SystemID" SortExpression="SystemID" />
            <asp:BoundField DataField="Computer" HeaderText="Computer" SortExpression="Computer" />
            <asp:BoundField DataField="Rank" HeaderText="Rank" SortExpression="Rank" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:M11105501ConnectionString %>" SelectCommand="select  SystemID,Computer,Rank from Detail_1
where ListID=@LID and Rank&lt;=@RankH and Rank&gt;=@RankL
">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="LID" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="TextBox2" Name="RankH" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox1" Name="RankL" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
