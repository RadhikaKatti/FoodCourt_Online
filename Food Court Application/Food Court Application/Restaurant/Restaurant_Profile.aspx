<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/Restaurant_Master_Page.Master" AutoEventWireup="true" CodeBehind="Restaurant_Profile.aspx.cs" Inherits="Food_Court_Application.Restaurant.Restaurant_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label1"  Font-Bold="true" runat="server" Text="RestaurantId"></asp:Label>
        </div>
        <div class="col-md-2 form-group">
            <asp:TextBox ID="txtrestaurantid" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label2"  Font-Bold="true" runat="server" Text="RestaurantName"></asp:Label>
        </div>
        <div class="col-md-2 form-group">
            <asp:TextBox ID="txtrestaurantname" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label3"  Font-Bold="true" runat="server" Text="FullName"></asp:Label>
        </div>
        <div class="col-md-2 form-group">
            <asp:TextBox ID="txtfullname" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-2"></div>
    </div>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label4"  Font-Bold="true" runat="server" Text="Email"></asp:Label>
        </div>
        <div class="col-md-2 form-group">
            <asp:TextBox ID="txtemail" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label5"  Font-Bold="true" runat="server" Text="MobileNo"></asp:Label>
        </div>
        <div class="col-md-2 form-group">
            <asp:TextBox ID="txtmob" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label6"  Font-Bold="true" runat="server" Text="Area"></asp:Label>
        </div>
        <div class="col-md-2 form-group">
            <asp:TextBox ID="txtarea" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-2"></div>
    </div>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label7"  Font-Bold="true" runat="server" Text="Address"></asp:Label>
        </div>
        <div class="col-md-2 form-group">
            <asp:TextBox ID="txtadrs" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label8"  Font-Bold="true" runat="server" Text="Created At"></asp:Label>
        </div>
        <div class="col-md-2 form-group">
            <asp:TextBox ID="txtcreatedat" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label9"  Font-Bold="true" runat="server" Text="Updated At"></asp:Label>
        </div>
        <div class="col-md-2 form-group">
            <asp:TextBox ID="txtupdatedat" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-2"></div>
    </div>
    <div class="row">
        <div class="col-md-5"></div>
        <div class="col-md-1 form-group text-center">
            <asp:Button ID="btn_edit" OnClick="btn_edit_Click" runat="server" CssClass="btn btn-success" Text="Edit" />
        </div>
        <div class="col-md-1 form-group text-center">
            <asp:Button ID="btn_update" OnClick="btn_update_Click" runat="server" CssClass="btn btn-success" Text="Update" />
        </div>
        <div class="col-md-5"></div>
    </div>
</asp:Content>
