using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace AssignmentManager
{
    public partial class studantScreen : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-PHHL7VUV;Initial Catalog=AssignmentManager;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["email"]==null)
            {
                Response.Redirect("Login.aspx");
            }
            LabelGreeting.Text = "Welcome "+Session["name"].ToString()+" "+ Session["surname"].ToString() + "";
            FillGrid();


        }
        private void FillGrid()
        {
            using (var bd = new AssignmentManagerEntities5())
            {
                string dat = "SELECT(CurseName,AssignmentName,Grade,Date,Status)  FROM[User] WHERE(Id='" + Session["id"].ToString() + "')";
                SqlDataAdapter da;
                SqlCommand com = new SqlCommand(dat, con);
                DataTable dt = new DataTable();
                con.Open();
                com.ExecuteNonQuery();
                da = new SqlDataAdapter(com);
                da.Fill(dt);            
                con.Close();
                Assignmants.DataSource = dt;
                Assignmants.DataBind();
            }
        }
    }
}