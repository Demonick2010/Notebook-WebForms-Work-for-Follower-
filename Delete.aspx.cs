using System;
using System.Data;
using System.Data.SqlClient;

namespace Notebook
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\NotebookDb.mdf;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                int id = Convert.ToInt32(Request.QueryString["Id"].ToString());

                connection.Open();
                SqlCommand cmd = connection.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "DELETE FROM Contacts WHERE Id='" + id + "'";
                cmd.ExecuteNonQuery();

                Response.Redirect("ShowContacts.aspx");
            }
        }
    }
}