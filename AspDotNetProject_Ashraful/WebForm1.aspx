<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AspDotNetProject_Ashraful.WebForm1" %>

<%@ Register Src="~/UserControls/DataBoundAndSourceUserControl.ascx" TagPrefix="uc1" TagName="DataBoundAndSourceUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:DataBoundAndSourceUserControl runat="server" id="DataBoundAndSourceUserControl" />
</asp:Content>
