<%@ Page Title="Polygon Web Design" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link rel="stylesheet" href="public/styles/responsiveslides.css" />
  <script type="text/javascript" src="public/scripts/responsiveslides.min.js"></script>
  <script type="text/javascript" src="public/scripts/jquery.watermark-input.js"></script>
  <script type="text/javascript" src="public/scripts/jquery.validate.min.js"></script>
  <script type="text/javascript">
      $(function () {
            // Set up slider
          $("#slider").responsiveSlides({
              auto: false,
              pager: true,
              nav: true,
              speed: 500
          });

          // Set up watermarks
          if ($('#<%= txt_message.ClientID %>').val().length == 0 || $('#<%= txt_message.ClientID %>').val() == "What's on your mind?") {    // Verify if one of the texts is empty, if not shouldn't do the watermark because is a postback with an error sendind the email.
            $('#<%= txt_name.ClientID %>').watermark("Name");
            $('#<%= txt_email.ClientID %>').watermark("Email");
            $('#<%= txt_phone.ClientID %>').watermark("Phone");
            $('#<%= txt_subject.ClientID %>').watermark("Subject");
            $('#<%= txt_message.ClientID %>').watermark("What's on your mind?");
          }
          

          //custom validation rule - text only
          $.validator.addMethod("required_watermark",
							function (value, element, watermark) {
							    return (value.length > 0 && value != watermark);
							},
							"This field is required."
						);

          // Validate form
          $("form").validate({
            rules: {
                <%= txt_name.UniqueID %>: { required_watermark: 'Name' },
                <%= txt_email.UniqueID %>: { required_watermark: 'Email' },
                <%= txt_phone.UniqueID %>: { required_watermark: 'Phone' },
                <%= txt_subject.UniqueID %>: { required_watermark: 'Subject' },
                <%= txt_message.UniqueID %>: { required_watermark: "What's on your mind?" },
                }
          });
      });
  </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <div id="main-content-slider">
        <div class="main-content">

            <!-- Slideshow -->
            <div class="slider-container">
              <ul class="rslides" id="slider">
                <li>
                  <img src="public/images/slider1.jpg" alt="" />
                  <div class="caption_container">
                    <p class="caption title">Everyone needs a website today</p>
                    <p class="caption">Be everywhere all the time. We will help you to get online and get found now.</p>
                  </div>
                </li>
                <li>
                  <img src="public/images/slider2.jpg" alt="" />
                  <div class="caption_container">
                    <p class="caption title">Web Design Creativity</p>
                    <p class="caption">We plan, design and build awesome websites that are Simple, clean and creative</p>
                  </div>
                </li>
                <li>
                  <img src="public/images/slider3.jpg" alt="" />
                  <div class="caption_container">
                    <p class="caption title">Affordable web design</p>
                    <p class="caption">Quality web design packages for small businesses at low prices </p>
                  </div>
                </li>
                <li>
                  <img src="public/images/slider4.jpg" alt="" />
                  <div class="caption_container">
                    <p class="caption title">Mobile and Tablet friendly</p>
                    <p class="caption">Most of your customers have smartphones. Make it easy for your new clients to find you.</p>
                  </div>
                </li>
              </ul>
            </div>

        </div>
    </div>

    <div id="main-content-services">
        <div id="services-container" class="main-content">
            <div class="subtitle-box">
                <div class="title">
                    <div class="side"></div>
                        <span>Our Services</span>
                    <div class="side"></div>
                </div>                
                <span class="description">We use a combination of high-quality graphical design and new-generation programming to create dynamic and efficient pages that will surprise your clientele with their professional appearance and functionality. </span>
            </div>
            <div id="services-items">
                <div class="item">
                    <img alt="Starter Websites" src="public/images/starter_kit.png" width="115px" height="125px" />
                    <span class="ribbon">From <b>&euro;190</b></span>
                    <h3>Starter Websites</h3>
                    <p>
                        The starter website is designed for a start-up company who is looking for something simple and affordable to begin with.
                    </p>
                    <a href="Services/Starter.aspx" class="button">Read more</a>
                </div>

                <div class="item">
                    <img alt="Web Design" src="public/images/web_design.png" width="115px" height="125px" />
                    <span class="ribbon">From <b>&euro;370</b></span>
                    <h3>Web Design</h3>
                    <p>
                        Websites for small businesses and organizations looking to grow online, equipped with an easy to use Content Management System (CMS) that enables you remain in control of your website.
                    </p>
                    <a href="Services/WebDesign.aspx" class="button">Read more</a>
                </div>

                <div class="item no-margin-right">
                    <img alt="eCommerce" src="public/images/ecommerce.png" width="115px" height="125px" />
                    <h3>eCommerce</h3>
                    <p>
                        We can provide a stable and secure framework to sell your products and services online. Keep your site up to date by adding, editing and removing products with our easy to use Content Management System (CMS). 
                    </p>
                    <a href="#" class="button disabled">Not available</a>
                </div>
            </div>
        </div>
    </div>

<%--    <div class="shadow-box"></div>--%>

    <div id="main-content-contact" >       

        <div id="contact-container" class="main-content">
            <div class="subtitle-box">
                <div class="title">
                    <div class="side"></div>
                        <span>Contact us</span>
                    <div class="side"></div>
                </div>                
                <span class="description">If you need support or just have questions about our service simply fill out the form below or send an email to <b>contact@polygonwd.com</b> and I will contact you shortly. I'll try my best to get back to you within 2 business days.</span>
            </div>
            <div id="contact-items" class="form-elements">
                <div class="item">
                    <asp:TextBox ID="txt_name" class="textbox name" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txt_email" class="textbox email" runat="server" required></asp:TextBox>
                    <asp:TextBox ID="txt_phone" class="textbox phone" runat="server" required></asp:TextBox>
                    <asp:TextBox ID="txt_subject" class="textbox subject" runat="server" required></asp:TextBox>
                </div>
                <div class="item">
                    <asp:TextBox ID="txt_message" class="textarea message" runat="server" TextMode="MultiLine" required></asp:TextBox>

                    <asp:Button ID="btn_send" class="button" runat="server" Text="Send quote" 
                        onclick="btn_send_Click" />
                </div>                
            </div>
        </div>

    </div>
    
</asp:Content>
