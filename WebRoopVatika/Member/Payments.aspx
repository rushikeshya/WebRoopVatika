<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Payments.aspx.cs" Inherits="Member_Payments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
  <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Member/Default.aspx" runat="server">Back</asp:HyperLink>
    <center>
    <h2>
   Make Your Payments
    </h2><br />
    <table border="1">
    <tr>
    <td bgcolor="#FFFF66">Scan QR Code
        </td>
        </tr>
    <tr>
    <td>
        <asp:Image ID="Image2" runat="server" Width="200px" ImageUrl="~/site_images/QRCode.png" />
        </td>
        </tr>
    <tr>
    <td>Net Banking</td>
        </tr>
    <tr>
    <td bgcolor="#CCFFFF">Bank of India - IFSC - 0123</td>
        </tr>
    <tr>
    <td>A/C: 1234567890</td>
        </tr>
        </table>
        </center>
</asp:Content>

