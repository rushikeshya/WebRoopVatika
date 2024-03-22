<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ConfirmedOrders.aspx.cs" Inherits="Admin_ConfirmedOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:HyperLink ID="HyperLink2" NavigateUrl="~/Member/Default.aspx" runat="server">Back</asp:HyperLink>
    <center>
    <h2>
  Orders Confirmed
    </h2>
       <br />  
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataKeyNames="OID" DataSourceID="SqlDataSource1">
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
            
            SelectCommand="SELECT * FROM [Orders] WHERE ([Status] = @Status And UserName=@UserName)">
            <SelectParameters>
                <asp:Parameter DefaultValue="ORDER CONFIRMED" Name="Status" Type="String" />
                <asp:SessionParameter DefaultValue="" Name="UserName" SessionField="user" />
            </SelectParameters>
        </asp:SqlDataSource>
   

    </center>
</asp:Content>

