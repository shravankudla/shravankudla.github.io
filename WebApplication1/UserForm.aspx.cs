using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class UserForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            date.Text = "Today's Date: 4th March 2024";
            checkl1.Enabled = check1.Checked;
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            txt1.Text = UName.Text;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            date.Text = "Your Selection Is: " + Calendar1.SelectedDate.ToString("D");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            lbl2.Text = "Welcome";
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            lbl3.Text = DropDownList1.Text;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbl3.Text = DropDownList1.Text;
        }

        protected void filebtn_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                try { 
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/") + filename);
                statusLabel.Text = "Upload status: File uploaded!";
            }
            catch (Exception ex)
            {
                statusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }
        }
    }
}