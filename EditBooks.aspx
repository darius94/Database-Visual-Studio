<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBooks.aspx.cs" Inherits="Assignment3_Webstore_.EditBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Styles.css" rel="stylesheet" />
    <title>Updating  Books</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img src="banner.png" style="width:750px;"/>


        <p></p>
        <p></p>
        <p><a class="btn btn-default" href="Home/Index">Home&raquo;</a></p>
        <p><a class="btn btn-default" href="Home/Books">Books&raquo;</a></p>
        <p><a class="btn btn-default" href="Home/Contact">Contact&raquo;</a></p>
         <p><a class="btn btn-default" href="Home/Product">Product&raquo;</a></p>

        <h1>Updating  Books</h1></div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Book_Titl" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="512px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Book_Titl" HeaderText="Title" ReadOnly="True" SortExpression="Book_Titl" />
                <asp:BoundField DataField="Pub_Name" HeaderText="Publisher" SortExpression="Pub_Name" />
                <asp:BoundField DataField="Book_Description" HeaderText="Description" SortExpression="Book_Description" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:BoundField DataField="Book_Author" HeaderText="Author" SortExpression="Book_Author" />
                <asp:BoundField DataField="Book_Price" HeaderText="Price" SortExpression="Book_Price" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Book_Titl" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowSorting="True" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Book_Titl" HeaderText="Title" ReadOnly="True" SortExpression="Book_Titl" />
                <asp:BoundField DataField="Pub_Name" HeaderText="Publisher" SortExpression="Pub_Name" />
                <asp:BoundField DataField="Book_Description" HeaderText="Description" SortExpression="Book_Description" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:BoundField DataField="Book_Author" HeaderText="Author" SortExpression="Book_Author" />
                <asp:BoundField DataField="Book_Price" HeaderText="Price" SortExpression="Book_Price" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Book_StoreConnectionString %>" DeleteCommand="DELETE FROM [Books] WHERE [Book_Titl] = @Book_Titl" InsertCommand="INSERT INTO [Books] ([Book_Titl], [Pub_Name], [Book_Description], [Genre], [Book_Author], [Book_Price]) VALUES (@Book_Titl, @Pub_Name, @Book_Description, @Genre, @Book_Author, @Book_Price)" SelectCommand="SELECT [Book_Titl], [Pub_Name], [Book_Description], [Genre], [Book_Author], [Book_Price] FROM [Books]" UpdateCommand="UPDATE [Books] SET [Pub_Name] = @Pub_Name, [Book_Description] = @Book_Description, [Genre] = @Genre, [Book_Author] = @Book_Author, [Book_Price] = @Book_Price WHERE [Book_Titl] = @Book_Titl">
            <DeleteParameters>
                <asp:Parameter Name="Book_Titl" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Book_Titl" Type="String" />
                <asp:Parameter Name="Pub_Name" Type="String" />
                <asp:Parameter Name="Book_Description" Type="String" />
                <asp:Parameter Name="Genre" Type="String" />
                <asp:Parameter Name="Book_Author" Type="String" />
                <asp:Parameter Name="Book_Price" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pub_Name" Type="String" />
                <asp:Parameter Name="Book_Description" Type="String" />
                <asp:Parameter Name="Genre" Type="String" />
                <asp:Parameter Name="Book_Author" Type="String" />
                <asp:Parameter Name="Book_Price" Type="Decimal" />
                <asp:Parameter Name="Book_Titl" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
