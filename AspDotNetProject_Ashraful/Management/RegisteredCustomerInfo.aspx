<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminPanel.Master" AutoEventWireup="true" CodeBehind="RegisteredCustomerInfo.aspx.cs" Inherits="AspDotNetProject_Ashraful.Management.RegisteredCustomerInfo" %>

<%@ Register Src="~/UserControls/RegisteredCustInfo.ascx" TagPrefix="uc1" TagName="RegisteredCustInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainAdmin" runat="server">
    <uc1:RegisteredCustInfo runat="server" ID="RegisteredCustInfo" />
</asp:Content>
