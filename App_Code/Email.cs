using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;

/// <summary>
/// Summary description for Email
/// </summary>
public class Email
{
	public Email()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    static public Boolean Send(String To, String Name, String Email, String Phone, String Subject, String Body, out String Err)
    {
        Err = "";
        Boolean Sent = true;
        MailMessage Message = new MailMessage();

        Message.From = new MailAddress("contact@polygonwd.com");

        Message.To.Add(new MailAddress(To));

        Message.Subject = String.Format(Subject);

        Message.Body = String.Format("<b>Name:<b/> {0}. <br /> " +
                                        "<b>Email:<b/> {1}. <br /> " +
                                        "<b>Phone:<b/> {2}. <br /> " +
                                        "<b>Date:</b> {3}. <br /><br /> " +
                                        "<b>Subject:<b/> {3}. <br /><br /> " +
                                        "<b>Message:<b/> {4}", Name, Email, Phone, DateTime.Now, Subject, Body);

        Message.IsBodyHtml = true;

        SmtpClient client = new SmtpClient("localhost");

        try
        {
            client.Send(Message);
        }
        catch (Exception Ex)
        {
            Sent = false;
            Err = Ex.Message;
        }

        return Sent;
    }

    static public Boolean SendContactEmail(String Name, String Email, String Phone, String Subject, String Body, out String Err)
    {
        Err = "";
        Boolean Sent = true;
        MailMessage Message = new MailMessage();

        Message.From = new MailAddress("contact@polygonwd.com");

        Message.To.Add(new MailAddress("roberto.chino@gmail.com"));

        Message.Subject = String.Format("Polygon Web Design - Contact: {0}", Name);

        Message.Body = String.Format(   "<b>Name:</b> {0}. <br /> " +
                                        "<b>Email:</b> {1}. <br /> " +
                                        "<b>Phone:</b> {2}. <br /> " +
                                        "<b>Date:</b> {3}. <br /><br /> " +
                                        "<b>Subject:</b> {4}. <br /><br /> " +
                                        "<b>Message:</b> {5}", Name, Email, Phone, DateTime.Now, Subject, Body);

        Message.IsBodyHtml = true;

        SmtpClient client = new SmtpClient("localhost");

        try
        {
            //client.Send(Message);
        }  
        catch (Exception Ex)
        {
            Sent = false;
            Err = Ex.Message;
        }
        
        return Sent;
    }
}