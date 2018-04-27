<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="HoaDon.aspx.vb" Inherits="Nhom5_QLBH_Congvcph00948.HoaDon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Hóa Đơn</p>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="MaHD" DataSourceID="SqlDataSource1" Height="69px" Width="260px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" GridLines="Horizontal">
        <EditItemTemplate>
            MaHD:
            <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
            <br />
            SoHd:
            <asp:TextBox ID="SoHdTextBox" runat="server" Text='<%# Bind("SoHd") %>' />
            <br />
            MAKH:
            <asp:TextBox ID="MAKHTextBox" runat="server" Text='<%# Bind("MAKH") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            MaHD:
            <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            SoHd:
            <asp:TextBox ID="SoHdTextBox" runat="server" Text='<%# Bind("SoHd") %>' />
            <br />
            MAKH:
            <asp:TextBox ID="MAKHTextBox" runat="server" Text='<%# Bind("MAKH") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaHD:
            <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
            <br />
            SoHd:
            <asp:Label ID="SoHdLabel" runat="server" Text='<%# Bind("SoHd") %>' />
            <br />
            MAKH:
            <asp:Label ID="MAKHLabel" runat="server" Text='<%# Bind("MAKH") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\congvcph00948.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [Hoa_Don] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [Hoa_Don] ([MaHD], [SoHd], [MAKH]) VALUES (@MaHD, @SoHd, @MAKH)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [MaHD], [SoHd], [MAKH] FROM [Hoa_Don]" UpdateCommand="UPDATE [Hoa_Don] SET [SoHd] = @SoHd, [MAKH] = @MAKH WHERE [MaHD] = @MaHD">
    <DeleteParameters>
        <asp:Parameter Name="MaHD" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="MaHD" Type="String" />
        <asp:Parameter Name="SoHd" Type="Int32" />
        <asp:Parameter Name="MAKH" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="SoHd" Type="Int32" />
        <asp:Parameter Name="MAKH" Type="String" />
        <asp:Parameter Name="MaHD" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
