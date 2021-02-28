using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AspDotNetProject_Ashraful.UserControls
{
    public partial class BookInformationUserControl : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;


        public void RefreshData()
        {
            if (Page.IsPostBack)
            {
                gdViewBook.DataBind();
            }
        }

        public void ClearAllData()
        {
            txtBookEdition.Text = "";
            txtBookName.Text = "";
            txtBookPrice.Text = "";
            txtDescription.Text = "";
            txtPublication.Text = "";
            ddlAuthorID.Text = ddlAuthorID.Items[0].Value;

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if(txtBookName.Text!="" && txtBookEdition.Text!="" && txtBookPrice.Text!="" && txtDescription.Text!="" && txtPublication.Text != "")
            {
                using(con=new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Insert Into BookInformation (BookName, BookPrice, BookEdition, Publication, AuthorID, Description ) Values(@bookname, @bookprice, @bookedtion, @publication, @authorid, @description)", con);
                    cmd.Parameters.AddWithValue("@bookname", txtBookName.Text);
                    cmd.Parameters.AddWithValue("@bookprice", txtBookPrice.Text);
                    cmd.Parameters.AddWithValue("@bookedtion", txtBookEdition.Text);
                    cmd.Parameters.AddWithValue("@publication", txtPublication.Text);
                    cmd.Parameters.AddWithValue("@authorid", ddlAuthorID.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@description", txtDescription.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    RefreshData();
                    ClearAllData();
                    ShowAlert("Data Inserted Successfully");

                }
            }
            else
            {
                ShowAlert("Please Provide All Data");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtBookName.Text != "" && txtBookEdition.Text != "" && txtBookPrice.Text != "" && txtDescription.Text != "" && txtPublication.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Update BookInformation Set BookName=@bookname, BookPrice=@bookprice, BookEdition=@bookedtion, Publication=@publication, AuthorID=@authorid, Description=@description Where BookID = @bookid ", con);

                  
                    cmd.Parameters.AddWithValue("@bookid", lblAID.Text);

                    cmd.Parameters.AddWithValue("@bookname", txtBookName.Text);
                    cmd.Parameters.AddWithValue("@bookprice", txtBookPrice.Text);
                    cmd.Parameters.AddWithValue("@bookedtion", txtBookEdition.Text);
                    cmd.Parameters.AddWithValue("@publication", txtPublication.Text);
                    cmd.Parameters.AddWithValue("@authorid", ddlAuthorID.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@description", txtDescription.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    RefreshData();
                    ClearAllData();
                    ShowAlert("Data Updated Successfully");

                }
            }
            else
            {
                ShowAlert("Please Provide All Data");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using(con=new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("Delete From BookInformation Where BookID=@bookid", con);
                cmd.Parameters.AddWithValue("@bookid", lblAID.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                ShowAlert("Data Deleted Successfully");
                RefreshData();
                ClearAllData();
            }
        }

        protected void gdViewBook_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblAID.Text = gdViewBook.SelectedRow.Cells[1].Text;
            txtBookName.Text = gdViewBook.SelectedRow.Cells[2].Text;
            txtBookPrice.Text = gdViewBook.SelectedRow.Cells[3].Text;
            txtBookEdition.Text = gdViewBook.SelectedRow.Cells[4].Text;
            txtPublication.Text = gdViewBook.SelectedRow.Cells[5].Text;
            ddlAuthorID.Text = gdViewBook.SelectedRow.Cells[6].Text;
            txtDescription.Text = gdViewBook.SelectedRow.Cells[7].Text;

        }

        private void ShowAlert(string strmsg)
        {
            string str1;
            str1 = "<script language = 'javascript' type = 'text/javascript'> alert('" + strmsg + "');</script>";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "JS", str1);
        }
    }
}