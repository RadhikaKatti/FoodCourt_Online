<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/Restaurant_Master_Page.Master" AutoEventWireup="true" CodeBehind="Restaurant_Home.aspx.cs" Inherits="Food_Court_Application.Restaurant.Restaurant_Home" %>
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
            <img src="../images/2-Topping-Pizza.jpg" class="img img-responsive" width="400" height="100" />
        </div>
        <div class="col-md-4"></div>
    </div>
</asp:Content>
