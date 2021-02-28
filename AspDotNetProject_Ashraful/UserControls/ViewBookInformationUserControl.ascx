<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewBookInformationUserControl.ascx.cs" Inherits="AspDotNetProject_Ashraful.UserControls.ViewBookInformationUserControl" %>
<div class="col-md-12">
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col">
                    <center>
                           <h2>Book List</h2>
                        </center>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <hr>
                </div>
            </div>
            <div class="row">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT BookINformation.BookID, BookINformation.BookName, BookINformation.BookPrice, BookINformation.BookEdition, BookINformation.Publication, BookINformation.AuthorID, BookINformation.Description, AuthorInformation.AuthorID AS Expr1, AuthorInformation.AuthorName FROM BookINformation INNER JOIN AuthorInformation ON BookINformation.AuthorID = AuthorInformation.AuthorID"></asp:SqlDataSource>


                <div class="col">
                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:BoundField DataField="BookID" HeaderText="Book ID" ReadOnly="True" SortExpression="BookID">
                                <ControlStyle Font-Bold="True" />
                                <ItemStyle Font-Bold="True" />
                            </asp:BoundField>

                            <asp:TemplateField HeaderText="Book Description">
                                <ItemTemplate>
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("BookName") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                    </div>
                                                </div>
                                                <div class="row">

                                                    <div class="col-12">
                                                        <span>Author - 
                                                        </span>
                                                        <asp:Label ID="Label17" Font-Bold="true" runat="server" Text='<%# Eval("AuthorName") %>'></asp:Label>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-12">
                                                        Book Price - 
                                                   
                                                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Text='<%# Eval("BookPrice") %>'></asp:Label>

                                                        &nbsp;| Book Edition -
                                                    <asp:Label ID="Label14" Font-Bold="True" runat="server" Text='<%# Eval("BookEdition") %>'></asp:Label>

                                                    </div>
                                                    Publication -
                                                  <asp:Label ID="Label15" Font-Bold="True" runat="server" Text='<%# Eval("Publication") %>'></asp:Label>
                                                </div>

                                            </div>
                                            Description - 
                                                  
                                             <asp:Label ID="Label16" Font-Bold="True" runat="server" Text='<%# Eval("Description") %>'></asp:Label>

                                        </div>

                                    </div>


                                    </div>
                                       </div>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</div>
