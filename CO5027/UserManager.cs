using System;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace CO5027
{
    internal class UserManager<T>
    {
        private UserStore<IdentityUser> userStore;

        public UserManager(UserStore<IdentityUser> userStore)
        {
            this.userStore = userStore;
        }

        internal object CreateIdentity(IdentityUser user, string applicationCookie)
        {
            throw new NotImplementedException();
        }

        internal IdentityResult Create(IdentityUser user, string text)
        {
            throw new NotImplementedException();
        }

        internal object Find(string text1, string text2)
        {
            throw new NotImplementedException();
        }
    }
}