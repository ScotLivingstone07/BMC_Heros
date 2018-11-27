<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="feedback.aspx.vb" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
       <asp:Label ID="lblTitle" runat="server" BackColor="#7B7B80" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Enter youre Feedback" Width="843px"></asp:Label>
       <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="lblText" runat="server" Text="Please enter feedback below"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Height="111px" Width="760px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnSend" runat="server" Height="49px" Text="Send" Width="128px" />
    </p>
    <p>
    </p>
</asp:Content>

