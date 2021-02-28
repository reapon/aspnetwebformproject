<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminPanel.Master" AutoEventWireup="true" CodeBehind="BookInformationManage.aspx.cs" Inherits="AspDotNetProject_Ashraful.Management.BookInformationManage" %>

<%@ Register Src="~/UserControls/BookInformationUserControl.ascx" TagPrefix="uc1" TagName="BookInformationUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainAdmin" runat="server">
    <uc1:BookInformationUserControl runat="server" ID="BookInformationUserControl" />
</asp:Content>
