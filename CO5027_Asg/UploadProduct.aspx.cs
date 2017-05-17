using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027_Asg
{
    public partial class UploadProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Product_ID = Request.QueryString["id"];
            string filename = Product_ID + ".jpg";

            CurrentImage.ImageUrl = "~/Blouse/" + filename;
;        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string Product_ID = Request.QueryString["Id"];

            string filename = Product_ID + ".jpg";
            string saveLocation = Server.MapPath("~/Blouse/" + filename);

            imageFileUploadControl.SaveAs(saveLocation);


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
    }
}

   