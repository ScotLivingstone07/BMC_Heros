<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="log.aspx.vb" Inherits="Admin_Log" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
       <asp:Label ID="lblTitle" runat="server" BackColor="#7B7B80" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Error Log" Width="843px"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="timestamp" DataSourceID="SqlDataSource1" Width="461px">
            <Columns>
                <asp:BoundField DataField="timestamp" HeaderText="timestamp" ReadOnly="True" SortExpression="timestamp" />
                <asp:BoundField DataField="logonuser" HeaderText="logonuser" SortExpression="logonuser" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:errorlogConnectionString5 %>" DeleteCommand="DELETE FROM [log] WHERE [timestamp] = ? AND (([logonuser] = ?) OR ([logonuser] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [log] ([timestamp], [logonuser]) VALUES (?, ?)" ProviderName="<%$ ConnectionStrings:errorlogConnectionString5.ProviderName %>" SelectCommand="SELECT * FROM [log]" UpdateCommand="UPDATE [log] SET [logonuser] = ? WHERE [timestamp] = ? AND (([logonuser] = ?) OR ([logonuser] IS NULL AND ? IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
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
</asp:Content>

