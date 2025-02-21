using System;
using System.Data.SqlClient;
using System.Configuration;

namespace YourNamespace
{
    public partial class Kayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();


            string connectionString = ConfigurationManager.ConnectionStrings["LocalDBConnection"].ConnectionString;


            string query = "INSERT INTO Kullanıcılar (Email, Password) VALUES (@Email, @Password)";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);


                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();


                    Response.Write("<script>alert('Kayıt başarıyla tamamlandı.');</script>");


                    txtEmail.Text = "";
                    txtPassword.Text = "";
                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('Bir hata oluştu: " + ex.Message + "');</script>");
                }
            }
        }
    }
}
