using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Security;
public partial class Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        User objUserdata = new User();
        objUserdata.UserName = txtUserName.Text;
        objUserdata.FirstName = txtUserFirstName.Text;
        objUserdata.LastName = txtUserLastName.Text;
        objUserdata.Password = txtPassword.Text;
        objUserdata.UserAddress = txtAddress.Text;
        objUserdata.EmailId = txtEmailId.Text;
        if(new UserBO().IsUSerExists(txtUserName.Text.Trim()))
        {
            Helper.ShowAlert(this, "User already exists...please choose another name");
        }
        else{
        new UserBO().AddUser(objUserdata);
        EmailUtil.SendMail(ConfigurationManager.AppSettings["From"], txtEmailId.Text, string.Empty, string.Empty, ConfigurationManager.AppSettings["Subject"],
            Helper.Body("Registration", objUserdata));
           User objUser= new UserBO().AuthenticateUser(txtUserName.Text, txtPassword.Text);
           string UserInfo = objUser.UserName + "^" + objUser.PKUserId;
           FormsAuthentication.SetAuthCookie(UserInfo, false);
           Response.Redirect("~/HomePage.aspx");
        }
    }
}