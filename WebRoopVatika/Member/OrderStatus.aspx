<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="OrderStatus.aspx.cs" Inherits="Member_OrderStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
  <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Member/Default.aspx" runat="server">Back</asp:HyperLink>
    <center>
    <h2>
        Current OrderS Placed
    </h2>
    <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataKeyNames="OID" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="OID" HeaderText="OID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="OID" />
                <asp:BoundField DataField="ODate" DataFormatString="{0:dd-MMM-yyyy}" 
                    HeaderText="ODate" SortExpression="ODate" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="CropName" HeaderText="CropName" 
                    SortExpression="CropName" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                <asp:BoundField DataField="Status" HeaderText="Status" 
                    SortExpression="Status" />
            </Columns>
            <EmptyDataTemplate>
                No Orders Found
            </EmptyDataTemplate>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
            
            SelectCommand="SELECT * FROM [Orders] WHERE ([UserName] = @UserName and Status=@Status) ORDER BY [OID] DESC">
            <SelectParameters>
                <asp:SessionParameter Name="UserName" SessionField="user" Type="String" />
                <asp:Parameter DefaultValue="ORDER PLACED" Name="Status" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />

    </center>
</asp:Content>

