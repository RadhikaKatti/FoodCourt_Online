<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Forgot_Password.aspx.cs" Inherits="Food_Court_Application.Forgot_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <center><h3>Forgot Password</h3></center>
    <br />
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label1" Font-Bold="true" runat="server" Text="Email Id"></asp:Label>
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="TextBox1" required="" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4"></div>
    </div>
    <br />
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 form-group text-center">
            <asp:Button ID="btnForgot" OnClick="btnForgot_Click" runat="server" CssClass="btn btn-success" Text="Send Credentials" />
        </div>
        <div class="col-md-4"></div>
    </div><br />
    <div class="row">
        <div class="col-md-6"></div>
        <div class="col-md-6 form-group">
            Login? <asp:LinkButton ID="lbtn" runat="server" Text="Click Here" OnClick="lbtn_Click"></asp:LinkButton>
        </div>
    </div>
    <br />
    <br />
    <div class="row">
        <div class="col-md-5"></div>
        <div class="col-md-7 form-group">
            <asp:Label ID="Label2" Font-Bold="true" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
