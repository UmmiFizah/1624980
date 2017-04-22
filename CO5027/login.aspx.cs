using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtEmail1.Text, txtpassword1.Text);
            if (user != null)
            {

            }
            else
            {
                Literallogin.Text = "Invalid username or Password.";
            }
        }

        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            // var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            // var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            // authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity); 

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            //create user
            var user = new IdentityUser() { UserName = TxtUsername.Text, Email = TxtEmail2.Text };
            IdentityResult result = manager.Create(user, txtpassword2.Text);
            if (result.Succeeded)
            {
                LiteralRegister.Text = "Successfully Register";
            }
            else
            {
                LiteralRegister.Text = "An error has occurred: " + result.Errors.FirstOrDefault();
            }
        }
    }
}

    