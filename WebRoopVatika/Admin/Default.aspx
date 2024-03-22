<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<h2>Welcome Admin</h2>
<p>Action Panel</p>
        <ol>
         <li>
         <p>
          To View Member List   <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Admin/Members.aspx" runat="server">Click Here</asp:HyperLink>
         </p>
         </li>
          <li>
         <p>
          To Manage Crops   <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Admin/Crops.aspx" runat="server">Click Here</asp:HyperLink>
         </p>
         </li>
        </ol>
</asp:Content>

