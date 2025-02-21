using System;
using System.Data.SqlClient;
using System.Configuration;

namespace YourNamespace
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            string connectionString = ConfigurationManager.ConnectionStrings["LocalDBConnection"].ConnectionString;


            string firstName = txtFirstName.Text.Trim();
            string lastName = txtLastName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string message = txtMessage.Text.Trim();


            string query = "INSERT INTO iletişim (isim, soyisim, Email, mesaj) VALUES (@FirstName, @LastName, @Email, @Message)";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);


                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Message", message);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();


                    Response.Write("<script>alert('Mesajınız başarıyla gönderildi.');</script>");


                    txtFirstName.Text = "";
                    txtLastName.Text = "";
                    txtEmail.Text = "";
                    txtMessage.Text = "";
                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('Bir hata oluştu: " + ex.Message + "');</script>");
                }
            }
        }
    }
}
