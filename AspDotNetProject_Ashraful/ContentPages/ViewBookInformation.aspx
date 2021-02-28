<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewBookInformation.aspx.cs" Inherits="AspDotNetProject_Ashraful.ContentPages.ViewBookInformation" %>

<%@ Register Src="~/UserControls/ViewBookInformationUserControl.ascx" TagPrefix="uc1" TagName="ViewBookInformationUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:ViewBookInformationUserControl runat="server" id="ViewBookInformationUserControl" />
</asp:Content>
