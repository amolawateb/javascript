using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Javascript
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //if (ValidateForm())
            //{
                //SaveDate();
           // }
        }

        private void SaveDate()
        {
            string cs = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spInsertUser", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramFirstName = new SqlParameter("@FirstName", txtFirstName.Text);
                SqlParameter paramLastName = new SqlParameter("@LastName", txtLastName.Text);
                SqlParameter paramEmail= new SqlParameter("@Email", txtEmail.Text);

                cmd.Parameters.Add(paramFirstName);
                cmd.Parameters.Add(paramLastName);
                cmd.Parameters.Add(paramEmail);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        private bool ValidateForm()
        {
            System.Threading.Thread.Sleep(5000);
            bool ret = true;

            if(string.IsNullOrEmpty(txtFirstName.Text))
            {
                ret = false;
                lblFirstName.Text = "First Name is required";
            }
            else
            {
                lblFirstName.Text = "";
            }

            if (string.IsNullOrEmpty(txtLastName.Text))
            {
                ret = false;
                lblLastName.Text = "Last Name is required";
            }
            else
            {
                lblLastName.Text = "";
            }

            if (string.IsNullOrEmpty(txtEmail.Text))
            {
                ret = false;
                lblEmail.Text = "Email is required";
            }
            else
            {
                lblEmail.Text = "";
            }

            return ret;
        }
    }
}