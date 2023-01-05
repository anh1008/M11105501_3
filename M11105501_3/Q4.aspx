<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Q4.aspx.cs" Inherits="M11105501_3.Q4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:M11105501ConnectionString %>" SelectCommand="SELECT * FROM [country]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="value" DataValueField="ID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:M11105501ConnectionString %>" SelectCommand="SELECT * FROM [list_1]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="Segment" HeaderText="Segment" SortExpression="Segment" />
            <asp:BoundField DataField="numCores" HeaderText="numCores" ReadOnly="True" SortExpression="numCores" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:M11105501ConnectionString %>" SelectCommand="select  Segment,sum(TotalCores) as numCores from Detail_1,list_1
where ListID=@LID and Country=@C
group by Segment
order by Segment">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="LID" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DropDownList1" Name="C" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
