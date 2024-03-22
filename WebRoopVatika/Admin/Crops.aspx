
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Crops.aspx.cs" Inherits="Admin_Crops" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:HyperLink ID="HyperLink2" NavigateUrl="~/Admin/Default.aspx" runat="server">Back</asp:HyperLink>
    <center>
    <h2>
    Manage Crop List
    </h2>
    <br />
   
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="RID" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." CellPadding="4" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="RID" HeaderText="RID" ReadOnly="True" 
                    SortExpression="RID" />
                <asp:BoundField DataField="CropName" HeaderText="CropName" 
                    SortExpression="CropName" />
                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
            DeleteCommand="DELETE FROM [CropMaster] WHERE [RID] = @RID" 
            InsertCommand="INSERT INTO [CropMaster] ([CropName], [Rate], [Stock]) VALUES (@CropName, @Rate, @Stock)" 
            ProviderName="<%$ ConnectionStrings:ASPNETDBConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [RID], [CropName], [Rate], [Stock] FROM [CropMaster]" 
            UpdateCommand="UPDATE [CropMaster] SET [CropName] = @CropName, [Rate] = @Rate, [Stock] = @Stock WHERE [RID] = @RID">
            <DeleteParameters>
                <asp:Parameter Name="RID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CropName" Type="String" />
                <asp:Parameter Name="Rate" Type="Int32" />
                <asp:Parameter Name="Stock" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CropName" Type="String" />
                <asp:Parameter Name="Rate" Type="Int32" />
                <asp:Parameter Name="Stock" Type="Int32" />
                <asp:Parameter Name="RID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>

