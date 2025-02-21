using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace YourNamespace
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text.Trim();
            string password = TextBox2.Text.Trim();


            string connectionString = ConfigurationManager.ConnectionStrings["LocalDBConnection"].ConnectionString;


            string query = "SELECT COUNT(1) FROM Kullanıcılar WHERE Email = @Email AND Password = @Password";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);


                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);

                try
                {
                    con.Open();
                    int count = Convert.ToInt32(cmd.ExecuteScalar());

                    if (count == 1)
                    {

                        Session["UserEmail"] = email;
                        Response.Redirect("homepage.aspx");
                    }
                    else
                    {

                        Label1.Text = "Geçersiz e-posta veya şifre.";
                    }
                }
                catch (Exception ex)
                {

                    Label1.Text = "Bir hata oluştu: " + ex.Message;
                }
            }
        }
    }
}
