<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ConfirmedOrders.aspx.cs" Inherits="Admin_ConfirmedOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:HyperLink ID="HyperLink2" NavigateUrl="~/Admin/Default.aspx" runat="server">Back</asp:HyperLink>
    <center>
    <h2>
  Orders Confirmed
    </h2>
        <h3>
        Selected OID:<asp:Label ID="lblOID" runat="server" ForeColor="Purple" Text="0"></asp:Label>
        &nbsp;-
            <asp:Label ID="lblCropName" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label>
&nbsp;For QTY.
            <asp:Label ID="lblQty" runat="server" Text="0" ForeColor="Red"></asp:Label>
&nbsp;</h3> 
        <p>
            <asp:Button ID="btnDispatch" runat="server" Text="Dispatch Order" 
                onclick="btnDispatch_Click" />
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" ForeColor="Maroon"></asp:Label>
        </p>
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataKeyNames="OID" DataSourceID="SqlDataSource1" 
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
           <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
           <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
           <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
           <RowStyle BackColor="White" ForeColor="#003399" />
           <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
           <SortedAscendingCellStyle BackColor="#EDF6F6" />
           <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
           <SortedDescendingCellStyle BackColor="#D6DFDF" />
           <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
   

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
            SelectCommand="SELECT * FROM [Orders] WHERE ([Status] = @Status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="ORDER CONFIRMED" Name="Status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
   

    </center>
</asp:Content>

