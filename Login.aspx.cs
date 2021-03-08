using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentManager
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login_click_student(object sender, EventArgs e)
        {
            using (var db = new AssignmentManagerEntities5())
            {
                var user = db.Users.Where(i => i.Email == sEmail.Text && i.Passward == sPassward.Text).FirstOrDefault();
                if(user == null)
                {
                    sEmail.Text = "f";
                }
                else
                {
                    Session["email"] = user.Email;
                    Session["id"] = user.Id;
                    Session["name"] = user.Name;
                    Session["surname"] = user.Surname;
                    Response.Redirect("studantScreen.aspx");
                }
            }
        }
    }
}