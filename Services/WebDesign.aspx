<%@ Page Title="Web Design" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="WebDesign.aspx.cs" Inherits="WebDesign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

    <link rel="stylesheet" type="text/css" href="../public/styles/shadowbox.css" />

    <script type="text/javascript" src="../public/scripts/jquery.watermark-input.js"></script>
    <script type="text/javascript" src="../public/scripts/jquery.validate.min.js"></script>    
    <script type="text/javascript" src="../public/scripts/jquery.shadowbox.js"></script>

  <script type="text/javascript">
      $(function () {

            // Set up showroom
            Shadowbox.init();

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
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <div id="main-content-services">
        <div id="services-container" class="main-content">
            <div class="title">
                <h2>Web Design</h2>
                <p>Websites for small businesses and organizations looking to grow online, equipped with an easy to use Content Management System (CMS) that enables you remain in control of your website.</p>
            </div>                
            <div id="services-items">
                <div class="item">
                    <img alt="Simple yet Unique" src="../public/images/simple_yet_unique.png" width="115px" height="125px" />
                    <h3>Simple yet Unique</h3>
                    <p>
                        The vast majority of websites that we build are created with a modern, professional style in mind. 
                    </p>
                </div>

                <div class="item no-margin-right">
                    <img alt="Mobile friendly" src="../public/images/mobile_friendly.png" width="115px" height="125px" />
                    <h3>Mobile friendly</h3>
                    <p>
                        Most of your customers have smartphones. Make it easy for your new clients to find you and engage with your website.
                    </p>
                </div>

                <div class="item">
                    <img alt="Fast and intuitive" src="../public/images/easy_to_update.png" width="115px" height="125px" />
                    <h3>Easy to update</h3>
                    <p>
                        Powered by a Content Management System (CMS) that allows our clients to simply and easily make changes to their websites. 
                    </p>
                </div>
            </div>
        </div>
    </div>

    <div id="main-content-templates">
        <div id="templates-content" class="main-content">
            <div class="subtitle-box subtitle-box-2">
                <div class="title">
                    <div class="side"></div>
                        <span>Examples</span>
                    <div class="side"></div>
                </div>                
                <span class="description">Have a look through our Web Design portfolio and see for yourself some examples about our work.</span>
            </div>          
            <div class="image-items">
                <div class="item">
                    <a href="../public/images/template_responsive1.jpg" rel="shadowbox">
                        <img alt="Template1" src="../public/images/template_preview1.jpg" />
                        <span class="image-hover"></span>
                        <%--<img alt="" src="../public/images/hover_zoom.png" />--%>
                    </a>                    
                </div>

                <div class="item">
                    <a href="../public/images/template_responsive2.jpg" rel="shadowbox">
                        <img alt="Template1" src="../public/images/template_preview2.jpg" />
                        <span class="image-hover"></span>
                        <%--<img alt="" src="../public/images/hover_zoom.png" />--%>
                    </a>                    
                </div>

                <div class="item">
                    <a href="../public/images/template_responsive3.jpg" rel="shadowbox">
                        <img alt="Template1" src="../public/images/template_preview3.jpg" />
                        <span class="image-hover"></span>
                        <%--<img alt="" src="../public/images/hover_zoom.png" />--%>
                    </a>                    
                </div>
            </div>
        </div>
    </div>

    <div id="main-content-pricing">
        <div id="pricing-content" class="main-content">
            <div class="subtitle-box">
                <div class="title">
                    <div class="side"></div>
                        <span>Packages</span>
                    <div class="side"></div>
                </div>                
                <span class="description">Pick the right Website Package for your needs. If you don't find a package that fits your requirements or you are not sure what kind of features you’ll will need, please contact us and we will help you create a custom package that will accommodate all of your needs. </span>
            </div>          
            <div class="comparative-items">
                <div class="item">
                    <div class="header">
                        <span class="title">Starter Website</span>
                        <span class="price">&euro;<b>190</b></span>
                        <span class="info"><b>Who's it for?</b> Great for first-time website owners wanting a simple web presence at an affordable cost.</span>
                    </div>
                    <div class="main-config">
                        <span class="title"><img alt="" src="../public/images/star.png" />Core features</span>
                        <ul>
                            <li><img alt="" src="../public/images/enabled.png" />No. of pages: 1-3</li>
                            <li><img alt="" src="../public/images/enabled.png" />FREE Domain: 1 year</li>
                            <li><img alt="" src="../public/images/enabled.png" />FREE Hosting: 1 year</li>
                            <li><img alt="" src="../public/images/enabled.png" />Mobile optimized</li>
                            <li><img alt="" src="../public/images/enabled.png" />Social Media Buttons</li>
                            <li><img alt="" src="../public/images/enabled.png" />Google Map</li>                            
                        </ul>
                    </div>
                    <div class="extra-config">
                        <span class="title"><img alt="" src="../public/images/setup.png" />Extra features</span>
                        <ul>
                            <li><img alt="" src="../public/images/disabled.png" />Content Management System</li>
                            <li><img alt="" src="../public/images/disabled.png" />Photo Gallery</li>
                            <li><img alt="" src="../public/images/disabled.png" />Contact Form</li>
                            <%--<li><img alt="" src="../public/images/disabled.png" />Google Analytics</li>--%>
                            <li><img alt="" src="../public/images/disabled.png" />Online Shop</li>
                            <li><img alt="" src="../public/images/disabled.png" />Accept payments</li>
                            <%--<li><img alt="" src="../public/images/disabled.png" />Disabled</li>
                            <li><img alt="" src="../public/images/caution.png" />Caution</li>--%>
                        </ul>
                    </div>
                    <a href="Starter.aspx" class="button">Read more</a>
                </div>

                <div class="item">
                    <div class="header current">
                        <span class="title">Web Design</span>
                        <span class="price">&euro;<b>370</b></span>
                        <span class="info">Who's it for? Ideal for small businesses who would like to control and manage the content within your web site.</span>
                    </div>
                    <div class="main-config">
                        <span class="title"><img alt="" src="../public/images/star.png" />Core features</span>
                        <ul>
                            <li><img alt="" src="../public/images/enabled.png" />No. of pages: 1-10</li>
                            <li><img alt="" src="../public/images/enabled.png" />FREE Domain: 1 year</li>
                            <li><img alt="" src="../public/images/enabled.png" />FREE Hosting: 1 year</li>
                            <li><img alt="" src="../public/images/enabled.png" />Mobile optimized</li>
                            <li><img alt="" src="../public/images/enabled.png" />Social Media Buttons</li>
                            <li><img alt="" src="../public/images/enabled.png" />Google Map</li>                            
                        </ul>
                    </div>
                    <div class="extra-config">
                        <span class="title"><img alt="" src="../public/images/setup.png" />Extra features</span>
                        <ul>
                            <li><img alt="" src="../public/images/enabled.png" />Content Management System</li>
                            <li><img alt="" src="../public/images/enabled.png" />Photo Gallery</li>
                            <li><img alt="" src="../public/images/enabled.png" />Contact Form</li>
                            <%--<li><img alt="" src="../public/images/enabled.png" />Google Analytics</li>--%>
                            <li><img alt="" src="../public/images/disabled.png" />Online Shop</li>
                            <li><img alt="" src="../public/images/disabled.png" />Accept payments</li>
                            <%--<li><img alt="" src="../public/images/disabled.png" />Disabled</li>
                            <li><img alt="" src="../public/images/caution.png" />Caution</li>--%>
                        </ul>
                    </div>
                    <%--<a href="WebDesign.aspx" class="button">Read more</a>--%>
                </div>
                
                <div class="item">
                    <div class="header">
                        <span class="title">eCommerce</span>
                        <span class="price"><b>N/A</b></span>
                        <span class="info">Who's it for? Perfect for a small business or solo entrepreneur who will be selling products or services online.</span>
                    </div>
                    <div class="main-config">
                        <span class="title"><img alt="" src="../public/images/star.png" />Core features</span>
                        <ul>
                            <li><img alt="" src="../public/images/enabled.png" />No. of pages: Unlimited</li>
                            <li><img alt="" src="../public/images/enabled.png" />FREE Domain: 1 year</li>
                            <li><img alt="" src="../public/images/enabled.png" />FREE Hosting: 1 year</li>
                            <li><img alt="" src="../public/images/enabled.png" />Mobile optimized</li>
                            <li><img alt="" src="../public/images/enabled.png" />Social Media Buttons</li>
                            <li><img alt="" src="../public/images/enabled.png" />Google Map</li>                            
                        </ul>
                    </div>
                    <div class="extra-config">
                        <span class="title"><img alt="" src="../public/images/setup.png" />Extra features</span>
                        <ul>
                            <li><img alt="" src="../public/images/enabled.png" />Content Management System</li>
                            <li><img alt="" src="../public/images/enabled.png" />Photo Gallery</li>
                            <li><img alt="" src="../public/images/enabled.png" />Contact Form</li>
                            <%--<li><img alt="" src="../public/images/enabled.png" />Google Analytics</li>--%>
                            <li><img alt="" src="../public/images/enabled.png" />Online Shop</li>
                            <li><img alt="" src="../public/images/enabled.png" />Accept payments</li>
                            <%--<li><img alt="" src="../public/images/disabled.png" />Disabled</li>
                            <li><img alt="" src="../public/images/caution.png" />Caution</li>--%>
                        </ul>
                    </div>
                    <a href="#" class="button disabled">Not available</a>

            </div>
        </div>
    </div>


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

