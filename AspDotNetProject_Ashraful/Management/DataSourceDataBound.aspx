<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminPanel.Master" AutoEventWireup="true" CodeBehind="DataSourceDataBound.aspx.cs" Inherits="AspDotNetProject_Ashraful.Management.DataSourceDataBound" %>

<%@ Register Src="~/UserControls/DataBoundAndSourceUserControl.ascx" TagPrefix="uc1" TagName="DataBoundAndSourceUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainAdmin" runat="server">
    <uc1:DataBoundAndSourceUserControl runat="server" ID="DataBoundAndSourceUserControl" />
</asp:Content>
