<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerRegistrationForm.aspx.cs" Inherits="AspDotNetProject_Ashraful.ContentPages.CustomerRegistrationForm" %>

<%@ Register Src="~/UserControls/CustomerRegistrationUserControl.ascx" TagPrefix="uc1" TagName="CustomerRegistrationUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:CustomerRegistrationUserControl runat="server" id="CustomerRegistrationUserControl" />
</asp:Content>
