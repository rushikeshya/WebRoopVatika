<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="Member_FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Admin/Default.aspx" 
        runat="server">
        Back
        </asp:HyperLink>
 <center>
 
<h2>Members Feedback</h2><br />
     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
         AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
         BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
         DataKeyNames="FID" DataSourceID="SqlDataSource1" 
         EmptyDataText="There are no data records to display.">
         <Columns>
             <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
             <asp:BoundField DataField="FID" HeaderText="FID" ReadOnly="True" 
                 SortExpression="FID" />
             <asp:BoundField DataField="OnDate" DataFormatString="{0:dd-MMM-yyyy}" 
                 HeaderText="OnDate" SortExpression="OnDate" />
             <asp:BoundField DataField="UserName" HeaderText="UserName" 
                 SortExpression="UserName" />
             <asp:BoundField DataField="Details" HeaderText="Details" 
                 SortExpression="Details" />
         </Columns>
         <EmptyDataTemplate>
             No FeedBack Found
         </EmptyDataTemplate>
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
         ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
         DeleteCommand="DELETE FROM [FeedBack] WHERE [FID] = @FID" 
         InsertCommand="INSERT INTO [FeedBack] ([OnDate], [UserName], [Details]) VALUES (@OnDate, @UserName, @Details)" 
         SelectCommand="SELECT [FID], [OnDate], [UserName], [Details] FROM [FeedBack] Order By FID Desc" 
         
         
         UpdateCommand="UPDATE [FeedBack] SET [OnDate] = @OnDate, [UserName] = @UserName, [Details] = @Details WHERE [FID] = @FID">
         <DeleteParameters>
             <asp:Parameter Name="FID" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="OnDate" Type="DateTime" />
             <asp:Parameter Name="UserName" Type="String" />
             <asp:Parameter Name="Details" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="OnDate" Type="DateTime" />
             <asp:Parameter Name="UserName" Type="String" />
             <asp:Parameter Name="Details" Type="String" />
             <asp:Parameter Name="FID" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
<br />

</center>
</asp:Content>

