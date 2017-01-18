<%@ Page Title="Our Work" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Showroom.aspx.cs" Inherits="Portfolio_Showroom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

    <link rel="stylesheet" type="text/css" href="../public/styles/shadowbox.css" />
    <script type="text/javascript" src="../public/scripts/jquery.shadowbox.js"></script>
    <script type="text/javascript">
        Shadowbox.init();
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <div>
        <div id="templates-content" class="main-content">
            <div class="title">
                <h2>Our Work</h2>
                <p>Have a look through our Web Design portfolio and see for yourself some examples about our work.</p>
            </div>        
            <div class="image-items">
                
                <asp:Literal ID="lt_showroom" runat="server"></asp:Literal>

            </div>
        </div>
    </div>


</asp:Content>

