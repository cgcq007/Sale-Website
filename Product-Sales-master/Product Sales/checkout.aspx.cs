using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_Sales
{
    public partial class checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] == null)
            {
                Session["cart"] = new Dictionary<String, int>();
            }
            Dictionary<String, int> cart = (Dictionary<String, int>)Session["cart"];
            if (Request.RequestType == "POST")
            {
                cart.Remove(Request.Form["id"]);
                Session["cart"] = cart;
                return;
            }
            if (cart.Count != 0)
            {
                String cartId = "(" + string.Join(",", cart.Keys) + ")";
                SqlDataSource1.SelectCommand = "SELECT * FROM [products] WHERE [id] in " + cartId;
                Repeater1.DataBind();
            } else
            {
                Repeater1.Dispose();
                SqlDataSource1.Dispose();
            }
        }
    }
}