<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="editBlog.aspx.vb" Inherits="editBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
       <asp:Label ID="lblTitle" runat="server" BackColor="#7B7B80" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Edit the Blog" Width="843px"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:FileUpload ID="fulFile" runat="server" Width="842px" />
    <br />
    <asp:Button ID="btnUpload" runat="server" Text="Upload File Now" Width="148px" />
</p>
<p>
    <asp:Label ID="lblSuccess" runat="server"></asp:Label>
</p>
<p>
    <asp:Label ID="lblFileName" runat="server" Text="File Name"></asp:Label>
</p>
<p>
    <asp:Label ID="lblFileType" runat="server" Text="File Type"></asp:Label>
</p>
<p>
    <asp:Label ID="lblFileSize" runat="server" Text="File Size"></asp:Label>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
    </asp:GridView>
    </p>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BlogConnectionString %>" DeleteCommand="DELETE FROM [Blog] WHERE [timestamp] = ?" InsertCommand="INSERT INTO [Blog] ([timestamp], [Editor]) VALUES (?, ?)" ProviderName="<%$ ConnectionStrings:BlogConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Blog]" UpdateCommand="UPDATE [Blog] SET [Editor] = ? WHERE [timestamp] = ?">
    <DeleteParameters>
        <asp:Parameter Name="timestamp" Type="DateTime" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="timestamp" Type="DateTime" />
        <asp:Parameter Name="Editor" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Editor" Type="String" />
        <asp:Parameter Name="timestamp" Type="DateTime" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

