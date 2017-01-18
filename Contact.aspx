<%@ Page Title="Contact us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

    <script type="text/javascript" src="public/scripts/jquery.watermark-input.js"></script>
  <script type="text/javascript" src="public/scripts/jquery.validate.min.js"></script>
  <script type="text/javascript">
      $(function () {

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
        <div class="main-content">
            <div class="title">
                <h2>Contact us</h2>
                <p>If you need support or just have questions about our service simply fill out the form below or send an email to <b>contact@polygonwd.com</b> and I will contact you shortly. I'll try my best to get back to you within 2 business days.</p>
            </div>                
            <div id="contact-page" class="form-elements">
                <div class="item">
                    <asp:TextBox ID="txt_name" class="textbox name" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txt_email" class="textbox email" runat="server" required></asp:TextBox>
                    <asp:TextBox ID="txt_phone" class="textbox phone" runat="server" required></asp:TextBox>
                    <asp:TextBox ID="txt_subject" class="textbox subject" runat="server" required></asp:TextBox>
                    <asp:TextBox ID="txt_message" class="textarea message" runat="server" TextMode="MultiLine" required></asp:TextBox>

                    <asp:Button ID="btn_send" class="button" runat="server" Text="Send quote" 
                        onclick="btn_send_Click" />
                </div>
                <div class="item info">
                    <img alt="" src="public/images/location.png" />
                    <span>Dublin, Ireland</span>
                    <img alt="" src="public/images/email.png" />
                    <span>contact@polygonwd.com</span>
                    <img alt="" src="public/images/phone.png" />
                    <span>+353 86 390 9843</span>
                </div>                
            </div>
        </div>
    </div>

</asp:Content>

