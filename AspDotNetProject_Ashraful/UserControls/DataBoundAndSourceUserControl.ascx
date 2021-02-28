<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DataBoundAndSourceUserControl.ascx.cs" Inherits="AspDotNetProject_Ashraful.UserControls.DataBoundAndSourceUserControl" %>
<br /> <br />
<h1 style="text-align:center">Form View of Author Information</h1>
<asp:FormView ID="frmViewAuthor" runat="server" AllowPaging="True" DataKeyNames="AuthorID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333">

    <EditItemTemplate>
        AuthorID:
        <asp:Label ID="AuthorIDLabel1" runat="server" Text='<%# Eval("AuthorID") %>' />
        <br />
        AuthorName:
        <asp:TextBox ID="AuthorNameTextBox" runat="server" Text='<%# Bind("AuthorName") %>' />
        <br />
        Gender:
        <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
        <br />
        Email:
        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
        <br />
        Phone:
        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
        <br />
        BirthDate:
        <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
        <br />
        Address:
        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <InsertItemTemplate>
        AuthorName:
        <asp:TextBox ID="AuthorNameTextBox" runat="server" Text='<%# Bind("AuthorName") %>' />
        <br />
        Gender:
        <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
        <br />
        Email:
        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
        <br />
        Phone:
        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
        <br />
        BirthDate:
        <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
        <br />
        Address:
        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        AuthorID:
        <asp:Label ID="AuthorIDLabel" runat="server" Text='<%# Eval("AuthorID") %>' />
        <br />
        AuthorName:
        <asp:Label ID="AuthorNameLabel" runat="server" Text='<%# Bind("AuthorName") %>' />
        <br />
        Gender:
        <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
        <br />
        Email:
        <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
        <br />
        Phone:
        <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
        <br />
        BirthDate:
        <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Bind("BirthDate") %>' />
        <br />
        Address:
        <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
        <br />

    </ItemTemplate>
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [AuthorInformation]"></asp:SqlDataSource>

<p>
    &nbsp;</p>
<p>
    &nbsp;</p>

<br />
<h1 style="text-align:center">Data List View Of book Information</h1>
<asp:DataList ID="dataListBookInfo" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#E3EAEB" />
    <ItemTemplate>
        BookID:
        <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
        <br />
        BookName:
        <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
        <br />
        BookPrice:
        <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Eval("BookPrice") %>' />
        <br />
        BookEdition:
        <asp:Label ID="BookEditionLabel" runat="server" Text='<%# Eval("BookEdition") %>' />
        <br />
        Publication:
        <asp:Label ID="PublicationLabel" runat="server" Text='<%# Eval("Publication") %>' />
        <br />
        AuthorID:
        <asp:Label ID="AuthorIDLabel" runat="server" Text='<%# Eval("AuthorID") %>' />
        <br />
        Description:
        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
        <br />
<br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>

<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [BookINformation]"></asp:SqlDataSource>
<p>
    &nbsp;</p>

<br />
<h1 style="text-align:center">Details View Of Registered Customer</h1>
<asp:DetailsView ID="detailsViewRegisteredCustomer" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="CustRegistrationID" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="CustRegistrationID" HeaderText="CustRegistrationID" InsertVisible="False" ReadOnly="True" SortExpression="CustRegistrationID" />
        <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
    </Fields>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [CustomerRegistrations]"></asp:SqlDataSource>



<br />
<h1 style="text-align:center;">List View Of Author Information</h1>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="AuthorID" DataSourceID="SqlDataSource4">
    <AlternatingItemTemplate>
        <li style="background-color: #FFFFFF;color: #284775;">AuthorID:
            <asp:Label ID="AuthorIDLabel" runat="server" Text='<%# Eval("AuthorID") %>' />
            <br />
            AuthorName:
            <asp:Label ID="AuthorNameLabel" runat="server" Text='<%# Eval("AuthorName") %>' />
            <br />
            Gender:
            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
            <br />
            BirthDate:
            <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Eval("BirthDate") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #999999;">AuthorID:
            <asp:Label ID="AuthorIDLabel1" runat="server" Text='<%# Eval("AuthorID") %>' />
            <br />
            AuthorName:
            <asp:TextBox ID="AuthorNameTextBox" runat="server" Text='<%# Bind("AuthorName") %>' />
            <br />
            Gender:
            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            BirthDate:
            <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        No data was returned.
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">AuthorName:
            <asp:TextBox ID="AuthorNameTextBox" runat="server" Text='<%# Bind("AuthorName") %>' />
            <br />Gender:
            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            <br />Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />BirthDate:
            <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
            <br />Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemSeparatorTemplate>
<br />
    </ItemSeparatorTemplate>
    <ItemTemplate>
        <li style="background-color: #E0FFFF;color: #333333;">AuthorID:
            <asp:Label ID="AuthorIDLabel" runat="server" Text='<%# Eval("AuthorID") %>' />
            <br />
            AuthorName:
            <asp:Label ID="AuthorNameLabel" runat="server" Text='<%# Eval("AuthorName") %>' />
            <br />
            Gender:
            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
            <br />
            BirthDate:
            <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Eval("BirthDate") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">AuthorID:
            <asp:Label ID="AuthorIDLabel" runat="server" Text='<%# Eval("AuthorID") %>' />
            <br />
            AuthorName:
            <asp:Label ID="AuthorNameLabel" runat="server" Text='<%# Eval("AuthorName") %>' />
            <br />
            Gender:
            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
            <br />
            BirthDate:
            <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Eval("BirthDate") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>



<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [AuthorInformation]"></asp:SqlDataSource>




