using System;
using System.Data.SqlClient;
using System.Configuration;

namespace YourNamespace
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            string connectionString = ConfigurationManager.ConnectionStrings["LocalDBConnection"].ConnectionString;


            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();
            string photoUrl = txtPhotoUrl.Text.Trim();


            string query = "INSERT INTO adminss (Email, Password, PhotoUrl) VALUES (@Email, @Password, @PhotoUrl)";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);


                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@PhotoUrl", photoUrl);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();


                    Response.Write("<script>alert('Kullanıcı başarıyla eklendi.');</script>");


                    txtEmail.Text = "";
                    txtPassword.Text = "";
                    txtPhotoUrl.Text = "";
                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('Bir hata oluştu: " + ex.Message + "');</script>");
                }
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            string connectionString = ConfigurationManager.ConnectionStrings["LocalDBConnection"].ConnectionString;


            string email = txtEmailToDelete.Text.Trim();


            string query = "DELETE FROM Kullanıcılar WHERE Email = @Email";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);


                cmd.Parameters.AddWithValue("@Email", email);

                try
                {
                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();

                    if (rowsAffected > 0)
                    {

                        Response.Write("<script>alert('Kullanıcı başarıyla silindi.');</script>");
                    }
                    else
                    {

                        Response.Write("<script>alert('Belirtilen e-posta adresine ait kullanıcı bulunamadı.');</script>");
                    }


                    txtEmailToDelete.Text = "";
                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('Bir hata oluştu: " + ex.Message + "');</script>");
                }
            }
        }
    }
}
