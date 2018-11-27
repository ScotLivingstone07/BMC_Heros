<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="editIndex.aspx.vb" Inherits="editIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
       <asp:Label ID="lblTitle" runat="server" BackColor="#7B7B80" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Edit the Index" Width="843px"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FileUpload ID="fulFile" runat="server" Width="842px" />
<asp:Button ID="btnUpload" runat="server" Text="Upload File Now" Width="148px" />
<br />
<asp:Label ID="lblSuccess" runat="server"></asp:Label>
<br />
<asp:Label ID="lblFileName" runat="server" Text="File Name"></asp:Label>
<br />
<asp:Label ID="lblFileType" runat="server" Text="File Type"></asp:Label>
<br />
<asp:Label ID="lblFileSize" runat="server" Text="File Size"></asp:Label>
<br />
<asp:Image ID="imgSuperhero" runat="server" Height="153px" Width="187px" />
<br />
<asp:FileUpload ID="fulPicture" runat="server" Width="838px" />
<br />
<asp:Button ID="btnUploadPic" runat="server" Text="Upload the image" />
<br />
<asp:Label ID="lblMessage" runat="server"></asp:Label>
<br />
</asp:Content>

