<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Chitietsanpham.aspx.vb" Inherits="Nhom5_QLBH_Congvcph00948.Chitietsanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>Loại sản Phẩm</p>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="LoaiSp" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" GridLines="Horizontal">
        <EditItemTemplate>
            LoaiSp:
            <asp:Label ID="LoaiSpLabel1" runat="server" Text='<%# Eval("LoaiSp") %>' />
            <br />
            TenSP:
            <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            MaLoaiSP:
            <asp:TextBox ID="MaLoaiSPTextBox" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            LoaiSp:
            <asp:TextBox ID="LoaiSpTextBox" runat="server" Text='<%# Bind("LoaiSp") %>' />
            <br />
            TenSP:
            <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            MaLoaiSP:
            <asp:TextBox ID="MaLoaiSPTextBox" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            LoaiSp:
            <asp:Label ID="LoaiSpLabel" runat="server" Text='<%# Eval("LoaiSp") %>' />
            <br />
            TenSP:
            <asp:Label ID="TenSPLabel" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            MaLoaiSP:
            <asp:Label ID="MaLoaiSPLabel" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#3363"   ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333"  />
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\congvcph00948.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [Chi_Tiet_San_Pham] WHERE [LoaiSp] = @LoaiSp" InsertCommand="INSERT INTO [Chi_Tiet_San_Pham] ([LoaiSp], [TenSP], [MaLoaiSP]) VALUES (@LoaiSp, @TenSP, @MaLoaiSP)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [LoaiSp], [TenSP], [MaLoaiSP] FROM [Chi_Tiet_San_Pham]" UpdateCommand="UPDATE [Chi_Tiet_San_Pham] SET [TenSP] = @TenSP, [MaLoaiSP] = @MaLoaiSP WHERE [LoaiSp] = @LoaiSp">
    <DeleteParameters>
        <asp:Parameter Name="LoaiSp" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="LoaiSp" Type="String" />
        <asp:Parameter Name="TenSP" Type="String" />
        <asp:Parameter Name="MaLoaiSP" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TenSP" Type="String" />
        <asp:Parameter Name="MaLoaiSP" Type="String" />
        <asp:Parameter Name="LoaiSp" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
