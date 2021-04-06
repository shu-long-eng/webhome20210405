using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁作業
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_init(object sender, EventArgs e)
        {
            this.Repeater1.DataSource = Class1.showDB();
            this.Repeater1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            string id = this.textbox.Text;
            this.Repeater1.DataSource = Class1.searchDB(id);
            this.Repeater1.DataBind();
        }
    }
}