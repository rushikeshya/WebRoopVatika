<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Member_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Member/Default.aspx" runat="server">Back</asp:HyperLink>
    <center>
    <h2>
    My Profile
    </h2>
    <br />
    <table border="1">
    <tr>
    <td>FullName</td>
    <td>
        <asp:TextBox ID="txtFN" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td>Location</td>
    <td>
        <asp:TextBox ID="txtLoc" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td>ContactInfo</td>
    <td>
        <asp:TextBox ID="txtCI" runat="server"></asp:TextBox>
        </td>
    </tr>
   
    <tr>
    <td colspan="2" align="center" bgcolor="#CCFF99"> 
        <asp:Button ID="btnUpdate" runat="server" Text="Update Profile" 
            onclick="btnUpdate_Click" />
        </td>
   
    </tr>
    </table>
      <p>
        <asp:Label ID="Label1" runat="server" ForeColor="Maroon"></asp:Label>
    </p>
    </center>
</asp:Content>

