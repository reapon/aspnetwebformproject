<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AuthorInformationUserControl.ascx.cs" Inherits="AspDotNetProject_Ashraful.UserControls.AuthorInformationUserControl" %>

<div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                           <img width="50px" src="../images/avatar.png"/>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                           <h3>Author Information</h3>
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
                                <label>Full Name</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="Name Is Required">*</asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtName" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>Date Of Birth</label>
                                <asp:RangeValidator ID="RangeValidatorDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of birth Should be in Between 1950-2020" MaximumValue="12/12/2020" MinimumValue="01/01/1950" Type="Date">*</asp:RangeValidator>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtDOB" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact No</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile Number Is Required">*</asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtMobile" runat="server" placeholder="Contact Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Email</label>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Format Is Not Valid!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder="Email ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <label>Gender</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" ControlToValidate="ddlGender" ErrorMessage="Pick a Valid Gender value [Male,Female or Others]" InitialValue="0">*</asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="ddlGender" runat="server">
                                        <asp:ListItem Value="0">Choose Any</asp:ListItem>
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Others</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Address</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address Is Required!">*</asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtAddress" runat="server" placeholder="Address"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <asp:Label ID="lblAID" runat="server" Visible="False"></asp:Label>


                        <br />

                        <div class="row">
                            <div class="col-md-4">
                                <asp:Button class="btn btn-success btn-block btn-lg" ID="btnAdd" runat="server" Text="Add" OnClick="btnSubmit_Click" />
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
                           <h2>Author List</h2>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Select Any Of The Author Information To Update Or Delete"></asp:Label>
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
                        <asp:GridView class="table table-striped table-bordered" ID="gdViewAuthor" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="AuthorID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gdViewAuthor_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="AuthorID" HeaderText="AuthorID" InsertVisible="False" ReadOnly="True" SortExpression="AuthorID" />
                                <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" DataFormatString="{0:MM/dd/yyyy}" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            </Columns>
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [AuthorInformation]"></asp:SqlDataSource>
                     </div>
                  </div>
               </div>
            </div>
         </div>


        </div>
    </div>