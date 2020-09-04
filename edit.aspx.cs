using System;
using System.Data;
using System.Data.SqlClient;

namespace Notebook
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;

            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\NotebookDb.mdf;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                int id = Convert.ToInt32(Request.QueryString["Id"].ToString());

                connection.Open();
                SqlCommand cmd = connection.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT * FROM Contacts WHERE Id=" + id + "";
                cmd.ExecuteNonQuery();

                DataTable dataTable = new DataTable();
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                dataAdapter.Fill(dataTable);

                foreach (DataRow item in dataTable.Rows)
                {
                    FirstName.Text = item["FirstName"].ToString();
                    SecondName.Text = item["SecondName"].ToString();
                    LastName.Text = item["LastName"].ToString();

                    string date = item["BirthDay"].ToString();
                    var result = DateTime.Parse(date).ToString("yyyy-MM-dd");
                    Birthday.Text = result;
                    
                    PhoneNumber.Text = item["PhoneNumber"].ToString();
                    Email.Text = item["Email"].ToString();
                }
            }
        }

        protected void SubmitNote_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\NotebookDb.mdf;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                int id = Convert.ToInt32(Request.QueryString["Id"].ToString());

                connection.Open();
                SqlCommand cmd = connection.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "UPDATE Contacts SET FirstName=N'"+ FirstName.Text +"', SecondName=N'"+ SecondName.Text +"', LastName=N'"+ LastName.Text +"', BirthDay=N'"+ Birthday.Text +"', PhoneNumber=N'"+ PhoneNumber.Text +"', Email=N'"+ Email.Text +"' WHERE Id="+ id +"";
                cmd.ExecuteNonQuery();

                Response.Redirect("ShowContacts.aspx");
            }
        }
    }
}