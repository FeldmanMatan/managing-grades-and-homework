using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AssignmentManager
{
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-PHHL7VUV;Initial Catalog=AssignmentManager;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Go_To_Login(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        protected void SRegistrat(object sender, EventArgs e)
        {
              using (var db = new AssignmentManagerEntities5())
              {
                  
                  if (db.Users.Where(i=>i.Email==sEmail.Text || i.Id==sId.Text ).Any())
                  {
                    userExistsMessage.Visible = true;

                  }
                  else
                  {
                    /*User newUser = new User
                    { 
                        Id = sId.Text,
                        Name = sName.Text,
                        Surname = sSurname.Text,
                        Passward = sPassward1.Text,
                        Email = sEmail.Text

                    };
                    db.Users.Add(newUser);
                    db.SaveChangesAsync();*/
                    string dat = "INSERT INTO [User](Id,Passward,Email,Name,Surname) VALUES('"+sId.Text+"','"+sPassward1.Text+"','"+sEmail.Text+"','"+sName.Text+"','"+sSurname.Text+"')";
                    SqlCommand com = new SqlCommand(dat,con);
                    con.Open();
                    com.ExecuteNonQuery();
                    con.Close();

                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}