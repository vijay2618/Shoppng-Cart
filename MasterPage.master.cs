using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
public partial class MasterPage : System.Web.UI.MasterPage
{
    private void BindCategories()
    {
        lvCategory.DataSource = CategoryBO.GetActiveCategories();
        lvCategory.DataBind();
    
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCategories();
            if (Request.IsAuthenticated)
            {
                lblSignUp.Visible = false;
                lbtnUserName.Text = "Welcome" + Helper.UserName;

            }
            else
            {
                lblSignUp.Visible = true;
            }
           
        }
    }

    protected void imgCheckout_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void imgLogo_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void lbtnCart_Click(object sender, EventArgs e)
    { }
    protected void lbtnUserName_Click(object sender, EventArgs e)
    {
       
    }
    protected void lvCategory_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

    }

    
}
