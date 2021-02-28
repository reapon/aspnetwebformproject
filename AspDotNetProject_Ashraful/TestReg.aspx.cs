using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AspDotNetProject_Ashraful
{
    public partial class TestReg : System.Web.UI.Page
    {
        //AuthorInformationDataContext ctx;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT [AuthorName] FROM [AuthorInformation]", conn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);

            conn.Open();


            DataSet ds = new DataSet();
            int rowsAffected = adapter.Fill(ds);



        }
        

        //public void DataLoad()
        //{
        //    if (Page.IsPostBack)
        //    {
        //        gdViewAuthor.DataBind();
        //    }
        //}

        //public void ClearData()
        //{
        //    txtName.Text = "";
        //    ddlGender.Text = ddlGender.Items[0].Value;
        //    txtEmail.Text = "";
        //    txtDOB.Text = DateTime.Today.Date.ToString();
        //    txtMobile.Text = "";
        //    txtAddress.Text = "";


        //}


        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{
        //    using (ctx = new AuthorInformationDataContext())
        //    {
        //        AuthorInformation author = new AuthorInformation
        //        {
        //            AuthorName=txtName.Text,
        //            Gender=ddlGender.SelectedValue,
        //            Email=txtEmail.Text,
        //            Phone=txtMobile.Text,
        //            BirthDate=Convert.ToDateTime(txtDOB.Text),
        //            Address=txtAddress.Text

                    
        //        };
        //        ctx.AuthorInformations.InsertOnSubmit(author);
        //        ctx.SubmitChanges();
        //    }
        //    this.DataLoad();

        //    ClearData();
        //}

        //protected void btnUpdate_Click(object sender, EventArgs e)
        //{
        //    int authorId = Convert.ToInt32(lblAID.Text);

        //    ctx = new AuthorInformationDataContext();

        //    AuthorInformation author = new AuthorInformation();

        //    author = ctx.AuthorInformations.Single(x => x.AuthorID == authorId);

        //    author.AuthorName = txtName.Text;
        //    author.Gender = ddlGender.SelectedValue;
        //    author.Email = txtEmail.Text;
        //    author.Phone = txtMobile.Text;
        //    author.BirthDate = Convert.ToDateTime(txtDOB.Text);
        //    author.Address = txtAddress.Text;


        //    ctx.SubmitChanges();
        //    this.DataLoad();
        //    ClearData();

        //}

        //protected void btnDelete_Click(object sender, EventArgs e)
        //{
        //    int authorId = Convert.ToInt32(lblAID.Text);

        //    using (ctx = new AuthorInformationDataContext())
        //    {
        //        AuthorInformation author = (from c in ctx.AuthorInformations
        //                             where c.AuthorID == authorId
        //                             select c).FirstOrDefault();
        //        ctx.AuthorInformations.DeleteOnSubmit(author);
        //        ctx.SubmitChanges();
        //    }
        //    this.DataLoad();
        //    ClearData();
        //}

        //protected void gdViewAuthor_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    lblAID.Text = gdViewAuthor.SelectedRow.Cells[1].Text;
        //    txtName.Text = gdViewAuthor.SelectedRow.Cells[2].Text;
        //    ddlGender.Text = gdViewAuthor.SelectedRow.Cells[3].Text;
        //    txtEmail.Text = gdViewAuthor.SelectedRow.Cells[4].Text;
        //    txtMobile.Text = gdViewAuthor.SelectedRow.Cells[5].Text;
        //    txtDOB.Text = gdViewAuthor.SelectedRow.Cells[6].Text;
        //    txtAddress.Text = gdViewAuthor.SelectedRow.Cells[7].Text;



        //}
    }
}