<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AuthorInformationManage.aspx.cs" Inherits="AspDotNetProject_Ashraful.Management.AuthorInformationManage" %>

<%@ Register Src="~/UserControls/AuthorInformationUserControl.ascx" TagPrefix="uc1" TagName="AuthorInformationUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainAdmin" runat="server">
    <uc1:AuthorInformationUserControl runat="server" id="AuthorInformationUserControl" />
</asp:Content>
