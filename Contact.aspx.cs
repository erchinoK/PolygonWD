using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        String Name = txt_name.Text;
        String Mail = txt_email.Text;
        String Phone = txt_phone.Text;
        String Subject = txt_subject.Text;
        String Message = txt_message.Text;
        String Err = "";

        if (Email.SendContactEmail(Name, Mail, Phone, Subject, Message, out Err))
        {
            txt_name.Text = "";
            txt_email.Text = "";
            txt_phone.Text = "";
            txt_subject.Text = "";
            txt_message.Text = "";

            Utility.ShowMessage(Master, "Message Sent", "success");
        }
        else
        {
            Utility.ShowMessage(Master, "An error has ocurred, please try again", "error");
        }
    }
}