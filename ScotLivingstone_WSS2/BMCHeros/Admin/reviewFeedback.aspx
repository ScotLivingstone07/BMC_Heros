<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="reviewFeedback.aspx.vb" Inherits="reviewFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
       <asp:Label ID="lblTitle" runat="server" BackColor="#7B7B80" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Review the Feedback" Width="843px"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblFeedback" runat="server"></asp:Label>
</asp:Content>

