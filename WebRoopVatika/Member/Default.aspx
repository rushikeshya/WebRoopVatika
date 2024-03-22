<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Member_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<h2>Welcome member 
 <asp:Label ID="Label1" ForeColor="maroon" runat="server"></asp:Label>
</h2>
<p>Action Panel</p>
        <ol>
         <li>
         <p>
          To Update Profile    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Member/Profile.aspx" runat="server">Click Here</asp:HyperLink>
         </p>
         </li>
         <li>
         <p>
          To View Crops   <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Member/Crops.aspx" runat="server">Click Here</asp:HyperLink>
         </p>
         </li>
        </ol>
</asp:Content>

