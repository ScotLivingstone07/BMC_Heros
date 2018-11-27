<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="stats.aspx.vb" Inherits="stats" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
       <asp:Label ID="lblTitle" runat="server" BackColor="#7B7B80" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Review the Stats" Width="843px"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:Label ID="lblText1" runat="server" Text="Total amount of users: "></asp:Label>
<asp:Label ID="lblTotal" runat="server"></asp:Label>
<br />
<asp:Label ID="lblText2" runat="server" Text="Number of fails logins: "></asp:Label>
&nbsp;&nbsp;&nbsp;
<asp:Label ID="lblError" runat="server"></asp:Label>
<br />
<asp:Label ID="lblText3" runat="server" Text="Number of users on index page: "></asp:Label>
<asp:Label ID="lblIndex" runat="server"></asp:Label>
<br />
<asp:Label ID="Label1" runat="server" Text="Number of anonymous users on blog page: "></asp:Label>
<asp:Label ID="lblBlog" runat="server" Text="Label"></asp:Label>
<br />
<asp:Label ID="Label2" runat="server" Text="Number of members on blog page: "></asp:Label>
<asp:Label ID="lblMember" runat="server" Text="Label"></asp:Label>
<br />
   
</asp:Content>

