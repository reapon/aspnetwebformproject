<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminPanel.Master" AutoEventWireup="true" CodeBehind="RoleManagement.aspx.cs" Inherits="AspDotNetProject_Ashraful.Management.RoleManagement" %>

<%@ Register Src="~/UserControls/RoleManagementUsrCtrl.ascx" TagPrefix="uc1" TagName="RoleManagementUsrCtrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainAdmin" runat="server">
    <uc1:RoleManagementUsrCtrl runat="server" ID="RoleManagementUsrCtrl" />
</asp:Content>
