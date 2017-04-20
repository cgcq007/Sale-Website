using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_Sales
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            String username = Username.Text;
            String password = Password.Text;
            String rePassword = RePassword.Text;
            String email = Email.Text;
            String firstName = FirstName.Text;
            String lastName = LastName.Text;
            String mobile = Mobile.Text;
            String address = Address.Text;
            int sex = RadioMale.Checked ? 1 : 0;

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Initial Catalog=ProductSales;Data Source=.;Integrated Security=true";
            conn.Open();

            SqlCommand cmd = new SqlCommand("select * from userlogin where username = '" + username + "'", conn);
            Object result = cmd.ExecuteScalar();
            if (result != null)
            {
                HttpContext.Current.Response.Write("<script>alert('The username is already taken. Please try different.')</script>");
                return;
            }
            
            if (!string.Equals(password, rePassword))
            {
                HttpContext.Current.Response.Write("<script>alert('The passwords are not the same.')</script>");
                return;
            }
            cmd = new SqlCommand("insert into userlogin (username, password, lastName, firstName, sex, mobile, email, address) values('" + username + "','" + password + "','" + lastName + "', '" + firstName + "', " + sex + ", '" + mobile + "', '" + email + "', '" + address + "')", conn);
            result = cmd.ExecuteScalar();
            conn.Close();

        }
    }
}