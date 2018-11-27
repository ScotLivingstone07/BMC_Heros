<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="blog.aspx.vb" Inherits="blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
       <asp:Label ID="lblTitle" runat="server" BackColor="#7B7B80" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Blog" Width="843px"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblFileText" runat="server" EnableTheming="True" Height="248px" Width="843px"></asp:Label>
</asp:Content>

