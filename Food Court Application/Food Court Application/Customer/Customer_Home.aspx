<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer_Master_Page.Master" AutoEventWireup="true" CodeBehind="Customer_Home.aspx.cs" Inherits="Food_Court_Application.Customer.Customer_Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12 text-center">
            <h2>Wel Come to <b><asp:Label ID="lblname" runat="server"></asp:Label></b></h2>
        </div>
    </div>
    <br /><br />
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 text-center">
            <img src="../images/sandwhich.jpeg" class="img img-responsive" width="400" height="100" />
        </div>
        <div class="col-md-4"></div>
    </div>
</asp:Content>
