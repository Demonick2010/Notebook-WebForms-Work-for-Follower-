using System;
using System.Data;
using System.Data.SqlClient;

namespace Notebook
{
    public partial class add_contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SubmitNote_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\NotebookDb.mdf;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand cmd = connection.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO Contacts VALUES(N'"+ FirstName.Text +"', N'"+ SecondName.Text +"', N'"+ LastName.Text +"', '"+ Birthday.Text +"', '"+ PhoneNumber.Text +"', N'"+ Email.Text +"')";
                cmd.ExecuteNonQuery();

                //Response.Write("<script>alert('Your contact added successful!')</script>");
                Response.Redirect("ShowContacts.aspx");
            }
        }
    }
}