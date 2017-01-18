<%@ Page Title="Who we are" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

    <script type="text/javascript" src="public/scripts/jquery.watermark-input.js"></script>
  <script type="text/javascript" src="public/scripts/jquery.validate.min.js"></script>
  <script type="text/javascript">
      $(function () {

          // Set up watermarks
          $('#<%= txt_name.ClientID %>').watermark("Name");
          $('#<%= txt_email.ClientID %>').watermark("Email");
          $('#<%= txt_phone.ClientID %>').watermark("Phone");
          $('#<%= txt_subject.ClientID %>').watermark("Subject");
          $('#<%= txt_message.ClientID %>').watermark("What's on your mind?");

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
    
    <div id="main-content-services">
        <div id="services-container" class="main-content">
            <div class="title">
                <h2>Who we are</h2>
                <p>Web Designing is my passion and I do it with lot of love and care. My concept on creative web designing is to make every website simple yet unique to get noticed from the crowd of other websites. I am a reliable Freelance Web Designer living in Dublin offering my services in an affordable price. </p>
                <br /><p>I Believe Your Website Should...</p>
            </div>                
            <div class="info-item">
                <div class="info">
                    <h3>Reflect Who You Are</h3>
                    <p>
                        I work hard to understand your business and build a website that will be most effective for your specific needs. I put ourselves in the shoes of your client to help determine the most effective colors, layout, mood, content, etc. to include on your website.
                    </p>
                </div>

                <div class="info">
                    <img alt="Reflect Who You Are" src="public/images/reflect_you.gif" />
                </div>                
            </div>

        </div>
    </div>

    <div class="main-content-2">
        <div class="main-content">
         

            <div class="info-item">
                <div class="info">
                    <img alt="Make a Good Impression" src="public/images/good_impression.gif" />
                </div>  

                <div class="info">
                    <h3>Make a Good Impression</h3>
                    <p>
                        Just as you want to make a good impression with your physical appearance, your website should make a good first impression on your clients. Many people make purchasing decisions based on their impressions of a business' website.
                    </p>
                </div>
                              
            </div>
        </div>
    </div>

    <div>
        <div class="main-content">
              
            <div class="info-item">
                <div class="info">
                    <h3>Be User Friendly</h3>
                    <p>
                        A website that has all the bells and whistles but is confusing to users is a waste of money. I have been involved in many usability studies and done extensive research on what works well and not so well for users. User friendliness is a top priority at Fox Web Development!
                    </p>
                </div>

                <div class="info">
                    <img alt="Be User Friendly" src="public/images/user_friendly.gif" />
                </div>                
            </div>

        </div>
    </div>

    <div class="main-content-2">
        <div class="main-content">        

            <div class="info-item">
                <div class="info">
                    <img alt="Function Correctly for Everyone" src="public/images/function_correctly.png" />
                </div>  

                <div class="info">
                    <h3>Function Correctly for Everyone</h3>
                    <p>
                        There are a wide variety of types of web browsers and computers that your potential clients are using. I are firm believers and dedicated to ensuring your website functions properly (and as identically as possible) whether your clients are using a Macintosh or Windows. I also ensure that your website functions correctly using the most popular Web Browsers such as Microsoft Windows Explorer, FireFox, Chrome, and Safari.
                    </p>
                </div>
                              
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
