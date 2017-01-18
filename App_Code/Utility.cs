using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

/// <summary>
/// Summary description for Utility
/// </summary>
public class Utility
{
    static public String ErrorLogFile = HttpContext.Current.Server.MapPath("~/Error/ErrorLog.txt");

	public Utility()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    static public void ShowMessage(MasterPage Master, String Message, String CssClass)
    {
        Label lbl_message = (Label)Master.FindControl("lbl_message");

        lbl_message.Text = Message + "<span class='close'>x</span>";
        if (!String.IsNullOrEmpty(CssClass)) lbl_message.CssClass = CssClass;
        lbl_message.Visible = true;        
    }

    static public void WriteFile(String AbsolutePath, String Text)
    {
        System.IO.StreamWriter StreamWriter1 = null;
        try
        {
            StreamWriter1 = new System.IO.StreamWriter(AbsolutePath);
            StreamWriter1.WriteLine(Text);
            //StreamWriter1.WriteLine("Some text on line1.\r\nSome text on line2.");
            StreamWriter1.Flush();
            StreamWriter1.Close();
        }
        catch (Exception e)
        {
            if (StreamWriter1 != null)
            {
                StreamWriter1.Close();
            }
        }
    }

    static public String ReadFile(String AbsolutePath)
    {
        String Text = "";

        System.IO.StreamReader StreamReader1 = null;
        try
        {
            if (System.IO.File.Exists(AbsolutePath))
            {
                StreamReader1 = new System.IO.StreamReader(AbsolutePath);
                Text = StreamReader1.ReadToEnd();
                StreamReader1.Close();
            }
        }
        catch (Exception e)
        {
            if (StreamReader1 != null)
            {
                StreamReader1.Close();
            }
        }

        return Text;
        
    }

    // Log an Exception
    public static void LogException(Exception exc, string source)
    {
        // Include logic for logging exceptions
        // Get the absolute path to the log file
        string logFile = ErrorLogFile;
        StreamWriter sw = null;
        try
        {
            // Open the log file for append and write the log
            sw = new StreamWriter(logFile, true);
            sw.WriteLine("********** {0} **********", DateTime.Now);
            if (exc.InnerException != null)
            {
                sw.Write("Inner Exception Type: ");
                sw.WriteLine(exc.InnerException.GetType().ToString());
                sw.Write("Inner Exception: ");
                sw.WriteLine(exc.InnerException.Message);
                sw.Write("Inner Source: ");
                sw.WriteLine(exc.InnerException.Source);
                if (exc.InnerException.StackTrace != null)
                {
                    sw.WriteLine("Inner Stack Trace: ");
                    sw.WriteLine(exc.InnerException.StackTrace);
                }
            }
            sw.Write("Exception Type: ");
            sw.WriteLine(exc.GetType().ToString());
            sw.WriteLine("Exception: " + exc.Message);
            sw.WriteLine("Source: " + source);
            sw.WriteLine("Stack Trace: ");
            if (exc.StackTrace != null)
            {
                sw.WriteLine(exc.StackTrace);
                sw.WriteLine();
            }
            sw.Close();
        }
        catch (Exception e)
        {
            if (sw != null)
            {
                sw.Close();
            }
        }
    }
}