<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspDotNetProject_Ashraful._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-image:url(images/banner3.jpg); color:white; background-repeat:no-repeat; background-size:cover; background-position:center;">
        <h1 style="text-shadow: 5px 5px 10px #333;">MAX E-Library</h1>
        <h2 class="lead" style="text-shadow: 3px 3px 5px #333;">Admin Login : User Name : admin@gmail.com | Password : Admin@123</h2>
        <p><a href="Management/AdminHome.aspx" class="btn btn-primary btn-lg">Admin Login &raquo;</a></p>
        
    </div>

    <div class="row">
            <div class="col-md-4">
               <center>
                  <img width="170px" src="images/1.png"/>
                  <h4>Digital Book Inventory</h4>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="140px" src="images/2.png"/>
                  <h4>Search Books</h4>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="140px" src="images/3.jpg"/>
                  <h4>Defaulter List</h4>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
            </div>
         </div>



</asp:Content>
