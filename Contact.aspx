<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="Nhom5_QLBH_Congvcph00948.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Your contact page.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            <span>0976762488</span>
        </p>
        <p>
            <span class="label">After Hours:</span>
            <span>0929585525</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="Congvcph00948@fpt.edu.vn">Support@example.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="vcdesign92@gmail.com">Marketing@example.com</a></span>
        </p>
        
    </section>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.9248737205553!2d105.76281741548645!3d21.0356917859946!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454bc756b5f4b%3A0xf6b89b17769714f3!2zVHLGsOG7nW5nIENhbyDEkOG6s25nIFRo4buxYyBIw6BuaCBGUFQgUG9seXRlY2huaWMgSMOgIE7hu5lp!5e0!3m2!1svi!2s!4v1523818831717" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
          Tòa nhà FPT Polytechnic (nhà H), Hàm Nghi, Mỹ Đình, Từ Liêm, Hà Nội<br />
           Tư vấn 1: (024) 8582 0808

Tư vấn 2: (024) 6684 0713

Tư vấn 3: (024) 6684 1713
        </p>
    </section>
</asp:Content>