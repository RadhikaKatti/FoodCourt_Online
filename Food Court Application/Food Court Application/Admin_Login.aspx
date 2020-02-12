<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="Food_Court_Application.Admin_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <center><h3>Admin Login</h3></center>
    <br />
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>            
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>            
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 form-group text-center">
            <asp:Button ID="btnLogin" OnClick="btnLogin_Click" runat="server" CssClass="btn btn-success" Text="Login" />
        </div>
        <div class="col-md-4"></div>
    </div>
</asp:Content>
