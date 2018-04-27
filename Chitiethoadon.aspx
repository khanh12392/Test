<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Chitiethoadon.aspx.vb" Inherits="Nhom5_QLBH_Congvcph00948.Chitiethoadon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Chi tiết hóa đơn</p>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="MaLoaiHd" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" GridLines="Horizontal">
        <EditItemTemplate>
            MaLoaiHd:
            <asp:Label ID="MaLoaiHdLabel1" runat="server" Text='<%# Eval("MaLoaiHd") %>' />
            <br />
            MaHD:
            <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            Masp:
            <asp:TextBox ID="MaspTextBox" runat="server" Text='<%# Bind("Masp") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            MaLoaiHd:
            <asp:TextBox ID="MaLoaiHdTextBox" runat="server" Text='<%# Bind("MaLoaiHd") %>' />
            <br />
            MaHD:
            <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            Masp:
            <asp:TextBox ID="MaspTextBox" runat="server" Text='<%# Bind("Masp") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaLoaiHd:
            <asp:Label ID="MaLoaiHdLabel" runat="server" Text='<%# Eval("MaLoaiHd") %>' />
            <br />
            MaHD:
            <asp:Label ID="MaHDLabel" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            Masp:
            <asp:Label ID="MaspLabel" runat="server" Text='<%# Bind("Masp") %>' />
            <br />
            SoLuong:
            <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\congvcph00948.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [Chi_Tiet_Hoa_Don] WHERE [MaLoaiHd] = @MaLoaiHd" InsertCommand="INSERT INTO [Chi_Tiet_Hoa_Don] ([MaLoaiHd], [MaHD], [Masp], [SoLuong]) VALUES (@MaLoaiHd, @MaHD, @Masp, @SoLuong)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [MaLoaiHd], [MaHD], [Masp], [SoLuong] FROM [Chi_Tiet_Hoa_Don]" UpdateCommand="UPDATE [Chi_Tiet_Hoa_Don] SET [MaHD] = @MaHD, [Masp] = @Masp, [SoLuong] = @SoLuong WHERE [MaLoaiHd] = @MaLoaiHd">
    <DeleteParameters>
        <asp:Parameter Name="MaLoaiHd" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="MaLoaiHd" Type="String" />
        <asp:Parameter Name="MaHD" Type="String" />
        <asp:Parameter Name="Masp" Type="String" />
        <asp:Parameter Name="SoLuong" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="MaHD" Type="String" />
        <asp:Parameter Name="Masp" Type="String" />
        <asp:Parameter Name="SoLuong" Type="Int32" />
        <asp:Parameter Name="MaLoaiHd" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
