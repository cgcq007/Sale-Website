using System;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Product_Sales
{
    public partial class addProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((String)Session["isAdmin"] == "Y")
            {
                //success
            }
            else {
                Response.Redirect("adminLogin.aspx");
            }
        }

        protected void Binsert_Click(object sender, EventArgs e)
        {
            if (ValidateProductData() == true)
            {
                //HttpContext.Current.Response.Write("<script>alert('validity true Added product " + Insertname.Text + "')</script>");
                
                try
                {
                    try
                    {
                        string fileName = Path.GetFileName(insertImageFile.PostedFile.FileName);
                        insertImageFile.PostedFile.SaveAs(Server.MapPath("~/images/") + fileName);
                        uploadPicture.Text =  fileName;
                    }
                    catch { 
                        HttpContext.Current.Response.Write("<script>alert('File upload Error')</script>");
                        return;
                    }
                    try
                    {
                        SqlDataSourceInsertProduct.Insert();
                    }
                    catch
                    {
                        HttpContext.Current.Response.Write("<script>alert('SQL Error Added product " + Insertname.Text + "')</script>");
                        return;
                    }
                    HttpContext.Current.Response.Write("<script>alert('Successfully Added product " + Insertname.Text + "')</script>");
                    Insertname.Text = "";
                    Insertprice.Text = "";
                    Insertdiscount.Text = "";
                    Insertcolor.Text = "";
                    Insertsize.Text = "";
                    Insertcatogory.Text = "";
                    Insertbrand.Text = "";
                    Insertdescription.Text = "";
                    insertinformation.Text = "";
                    Insertrate.Text = "";
                    Inserttag.Text = "";
                    Insertsku.Text = "";
                }
                catch (Exception err)
                {

                    HttpContext.Current.Response.Write("<script>alert('Not able to Added product " + Insertname.Text + "\n" + err.Message + "')</script>");
                    return;
                }
            }
            else {
                HttpContext.Current.Response.Write("<script>alert('Invalid inputs')</script>");
                return;
            }

        }

        private bool ValidateProductData()
        {
            Int32 ratevalue = Convert.ToInt32(Insertrate.Text);
            if (ratevalue < 0)
                ratevalue = 0;
            else if (ratevalue > 5)
                ratevalue = 5;
            Insertrate.Text = ratevalue.ToString();

            return true;
        }
    }
}