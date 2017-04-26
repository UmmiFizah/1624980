using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSendEmail_Click(object sender, EventArgs e)
        {
            // Sends email using a mail server that requires login credentials and a secure connection, e.g. gmail

            //create mail client and message with to and from address, and set message subject and body

 


                SmtpClient smtpClient = new SmtpClient();
                MailMessage msg = new MailMessage("qayla.co1@gmail.com", TxtEmail.Text);


                //settings sepcific to the mail service, e.g. server location, port number and that ssl is required

                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;

                //create credentials - e.g. username and password for the account
                System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("qayla.co1@gmail.com", "goodluck56");
                smtpClient.Credentials = credentials;
                msg = new MailMessage("qayla.co1@gmail.com", TxtEmail.Text);
                msg.Subject =  " Subject:  " + TxtSubject.Text;
                msg.Body = "Name: " + txtName.Text + " Message: " + TxtMessage.Text;



                try
                {
                    smtpClient.Send(msg);
                       ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Successfully Send Message!, Thank You');", true);
                }
                catch (Exception ex)
                {
                    //display the full error to the user
                   
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>');", true);
                }
            }
        }
    }








   