<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Report6.aspx.cs" Inherits="Admin_Report6" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/Default.aspx">Back</asp:HyperLink>
    <h2>
       Date-wise Order Report</h2>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <p>
    Enter Date: 
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
        <asp:Button ID="Button1" runat="server" Text="Show" onclick="Button1_Click" />
    </p>
    <!-- Report  Viewer -->
    <rsweb:ReportViewer Width="90%" ID="ReportViewer1" runat="server" 
        Font-Names="Verdana" Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
        WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
        <LocalReport ReportPath="Admin\Report4.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByDT" 
        TypeName="DataSet1TableAdapters.OrdersTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_OID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ODate" Type="DateTime" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="CropName" Type="String" />
            <asp:Parameter Name="Qty" Type="Int32" />
            <asp:Parameter Name="Rate" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="dt" PropertyName="Text" 
                Type="DateTime" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ODate" Type="DateTime" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="CropName" Type="String" />
            <asp:Parameter Name="Qty" Type="Int32" />
            <asp:Parameter Name="Rate" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Original_OID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>

