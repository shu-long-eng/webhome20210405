using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁作業
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_init(object sender, EventArgs e)
        {
            this.Repeater1.DataSource = Class1.showDB();
            this.Repeater1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string date = this.TextBox1.Text;
            string sub = this.TextBox2.Text;
           

            Class1.insertData(date, sub);

            this.Repeater1.DataSource = Class1.showDB();
            this.Repeater1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string id = this.TextBox7.Text;

            Class1.deleteData(id);
            this.Repeater1.DataSource = Class1.showDB();
            this.Repeater1.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string id = this.TextBox8.Text;
            string sub = this.TextBox9.Text;
            Class1.update(id, sub);
            this.Repeater1.DataSource = Class1.showDB();
            this.Repeater1.DataBind();
        }
    }
}