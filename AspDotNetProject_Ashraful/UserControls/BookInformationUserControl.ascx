<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BookInformationUserControl.ascx.cs" Inherits="AspDotNetProject_Ashraful.UserControls.BookInformationUserControl" %>

<div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <br />
                           <img width="150px" src="../images/book.jpeg"/>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                           <h3>Book Information</h3>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Book Name</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtBookName" ErrorMessage="Name Is Required">*</asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtBookName" runat="server" placeholder="Book Name"></asp:TextBox>
                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>Book Price</label>
                                
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtBookPrice" runat="server" placeholder="Book Price"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <label>Book Edition</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorBookEdition" runat="server" ControlToValidate="txtBookEdition" ErrorMessage="Book Edition Is Required">*</asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtBookEdition" runat="server" placeholder="Book Edition"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Publication</label>
                                
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtPublication" runat="server" placeholder="Publication"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <label>Author Name</label>
                                <asp:RequiredFieldValidator InitialValue="0" ID="RequiredFieldValidatorAuthorName" runat="server" ErrorMessage="Author Name Required, Pick A Valid Author!" ControlToValidate="ddlAuthorID" >*</asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" class="btn btn-default dropdown-toggle" ID="ddlAuthorID" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="AuthorName" DataValueField="AuthorID" AppendDataBoundItems="True">
                                        <asp:ListItem Value="0">-- Select Author Name --</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [AuthorInformation]"></asp:SqlDataSource>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Description</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescription" runat="server" ControlToValidate="txtDescription" ErrorMessage="Address Is Required!">*</asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtDescription" runat="server" placeholder="Description"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <asp:Label ID="lblAID" runat="server" Visible="False"></asp:Label>


                        <br />

                        <div class="row">
                            <div class="col-md-4">
                                <asp:Button class="btn btn-success btn-block btn-lg" ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                            </div>

                            <div class="col-md-4">
                                <asp:Button class="btn btn-warning btn-block btn-lg" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                            </div>

                            <div class="col-md-4">
                                <asp:Button class="btn btn-danger btn-block btn-lg" ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />

                            </div>

                        </div>
                        <br />
                        <div class="col-md-6 mx-auto">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        </div>
                    </div>


                </div>
            </div>


            <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h2>Book List</h2>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Select Any Of The Book Information To Update Or Delete"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         <asp:GridView class="table table-striped table-bordered" ID="gdViewBook" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="BookID" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="gdViewBook_SelectedIndexChanged">
                             <Columns>
                                 <asp:CommandField ShowSelectButton="True" />
                                 <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
                                 <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                                 <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
                                 <asp:BoundField DataField="BookEdition" HeaderText="BookEdition" SortExpression="BookEdition" />
                                 <asp:BoundField DataField="Publication" HeaderText="Publication" SortExpression="Publication" />
                                 <asp:BoundField DataField="AuthorID" HeaderText="AuthorID" SortExpression="AuthorID" />
                                 <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                             </Columns>
                             <FooterStyle BackColor="White" ForeColor="#333333" />
                             <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="White" ForeColor="#333333" />
                             <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#F7F7F7" />
                             <SortedAscendingHeaderStyle BackColor="#487575" />
                             <SortedDescendingCellStyle BackColor="#E5E5E5" />
                             <SortedDescendingHeaderStyle BackColor="#275353" />
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [BookINformation]"></asp:SqlDataSource>
                     </div>
                  </div>
               </div>
            </div>
         </div>


        </div>
    </div>
