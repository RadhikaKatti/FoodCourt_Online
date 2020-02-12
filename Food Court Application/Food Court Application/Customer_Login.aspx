<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Customer_Login.aspx.cs" Inherits="Food_Court_Application.Customer_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <center><h3>Customer Login</h3></center>
    <br />
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label1"  Font-Bold="true" runat="server" Text="Email Id"></asp:Label>            
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="TextBox1" required="" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label2"  Font-Bold="true" runat="server" Text="Password"></asp:Label>            
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="TextBox2" required="" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
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
    <br />
    <div class="row">
        <div class="col-md-6"></div>
        <div class="col-md-6 form-group">
            If New Customer? <asp:LinkButton ID="LinkButton1" runat="server" Text="Click Here" PostBackUrl="~/Customer_Registration.aspx"></asp:LinkButton>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6"></div>
        <div class="col-md-6 form-group">
            Forgot Password? <asp:LinkButton ID="lbtn" runat="server" Text="Click Here" OnClick="lbtn_Click"></asp:LinkButton>
        </div>
    </div>
</asp:Content>
