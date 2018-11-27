<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
    <asp:Label ID="lblTitle" runat="server" BackColor="#7B7B80" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Login" Width="840px"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Login ID="Login1" runat="server" Height="140px" Width="839px">
        
</asp:Login>
    <asp:SqlDataSource ID="dsErrorLog" runat="server" ConnectionString="<%$ ConnectionStrings:errorlogConnectionString5 %>" ProviderName="<%$ ConnectionStrings:errorlogConnectionString5.ProviderName %>" SelectCommand="SELECT * FROM [log]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [log] WHERE [timestamp] = ? AND (([logonuser] = ?) OR ([logonuser] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [log] ([timestamp], [logonuser]) VALUES (?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [log] SET [logonuser] = ? WHERE [timestamp] = ? AND (([logonuser] = ?) OR ([logonuser] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_timestamp" Type="DateTime" />
            <asp:Parameter Name="original_logonuser" Type="String" />
            <asp:Parameter Name="original_logonuser" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="timestamp" Type="DateTime" />
            <asp:Parameter Name="logonuser" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="logonuser" Type="String" />
            <asp:Parameter Name="original_timestamp" Type="DateTime" />
            <asp:Parameter Name="original_logonuser" Type="String" />
            <asp:Parameter Name="original_logonuser" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
<asp:Label ID="lblOutput" runat="server"></asp:Label>
</asp:Content>

