<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ViewOrders.aspx.cs" Inherits="Admin_ViewOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:HyperLink ID="HyperLink2" NavigateUrl="~/Admin/Default.aspx" runat="server">Back</asp:HyperLink>
    <center>
    <h2>
   Manage Orders
    </h2>
        <h2>
            Selected OID:
            <asp:Label ID="lblOID" runat="server" ForeColor="Red" Text="0"></asp:Label>
    &nbsp;
    </h2>
        <br />
        <asp:Button ID="btnPR" runat="server" Text="Payment Received" 
            onclick="btnPR_Click" />
     
        <p>
        <asp:Label ID="Label1" runat="server" ForeColor="Maroon"></asp:Label>
        </p>
      
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" DataKeyNames="OID" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
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
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
            SelectCommand="SELECT * FROM [Orders] WHERE ([Status] = @Status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="ORDER PLACED" Name="Status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </center>
</asp:Content>

