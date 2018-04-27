<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Nhom5_QLBH_Congvcph00948._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                
                <h2>ADam Store</h2>
            </hgroup>
            <p>
               Adam Store ra đời được hơn 5 năm, khởi đầu ở một cửa hàng nhỏ trên phố Lò Đúc. Adam Store những ngày đầu được gây dựng bởi 3 chàng trai trẻ tuổi, ôm trong mình hoài bão thay đổi xu hướng thời trang Việt Nam.

Bằng đam mê với vest và bằng những cố gắng bền bỉ trong từng giây phút, Adam Store đã tiên phong trong ngành thời trang, thay đổi tư duy khách hàng, trở thành thương hiệu Việt Nam lớn nhất trong thị phần vest may sẵn, là thương hiệu uy tín về đồ Âu cho nam giới.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Áo Sơ mi&nbsp;</h5>
          <asp:Image runat="server" ImageUrl="Images/somi1.jpg" Height="300px" Width="250px" />
            <a href="http://go.microsoft.com/fwlink/?LinkId=245146">Learn more…</a>
        </li>
        <li class="two">
            <h5>Quần Âu</h5>
            <asp:Image ID="Image1" runat="server" ImageUrl="Images/quanau1.jpg" Height="300px" Width="250px" />
            <a href="http://go.microsoft.com/fwlink/?LinkId=245147">Learn more…</a>
        </li>
        <li class="three">
            <h5>Thắt Lưng</h5>
             <asp:Image ID="Image2" runat="server" ImageUrl="Images/thatlung1.jpg" Height="300px" Width="250px" />
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143">Learn more…</a>
        </li>
    </ol>
</asp:Content>
