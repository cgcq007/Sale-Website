using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_Sales
{
    public partial class register2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String Action = "";
            if (!string.IsNullOrEmpty(Request.QueryString["Action"]))//获取form的Action中的参数
            {
                Action = Request.QueryString["Action"].Trim().ToLower();//去掉空格并变小写

                String firstName = Request.Form["FirstName"].ToString();
                String lastName = Request.Form["LastName"].ToString();
                String email = Request.Form["Email"].ToString();
                String mobile = Request.Form["Mobile"].ToString();
                String password = Request.Form["Password"].ToString();
                String rePassword = Request.Form["RePassword"].ToString();

                if (!string.Equals(password, rePassword))
                {
                    HttpContext.Current.Response.Write("<script>alert('The password is not the same.')</script>");
                    return;
                }

                HttpContext.Current.Response.Write("<script>alert('" + firstName + lastName + email + mobile + password + rePassword + "')</script>");

            }
        }


    }
}