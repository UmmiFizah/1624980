using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027_Asg
{
    public partial class Blouse : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"data source=SQL2016.FSE.Network;initial catalog=db_1624980_db_1624980_user_db_1624980_co5027;persist security info=True;user id=user_db_1624980_db_1624980_user_db_1624980_co5027;password=goodluck@56;MultipleActiveResultSets=True;App=EntityFramework");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "Select * from Product_tbl INNER JOIN ProductImage_tbl ON Product_tbl.Product_ID = ProductImage_tbl.Image_ID";
            cmd.ExecuteNonQuery();

            DataTable dataTable = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dataTable);
            itemsrpt.DataSource = dataTable;
            itemsrpt.DataBind();
            con.Close();
        }
    }
}