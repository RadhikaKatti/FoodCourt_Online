<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/Restaurant_Master_Page.Master" AutoEventWireup="true" CodeBehind="Change_Password.aspx.cs" Inherits="Food_Court_Application.Restaurant.Change_Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <center><h3>Change Password</h3></center>
    <br />
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label1" Font-Bold="true" runat="server"  Text="Restaurant"></asp:Label>            
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="txtrestaurantid"  Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label3"  Font-Bold="true" runat="server" Text="OldPassword"></asp:Label>            
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="txtoldpwd" required="" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label2"  Font-Bold="true" runat="server" Text=" NewPassword"></asp:Label>            
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="txtnewpwd" required="" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4"></div>
    </div>
     <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label4"  Font-Bold="true" runat="server" Text=" ConPassword"></asp:Label>            
       
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="txtconfirmpwd" required="" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnewpwd" ControlToValidate="txtconfirmpwd" ErrorMessage="ConfirmPassword"></asp:CompareValidator>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 form-group text-center">
            <asp:Button ID="btn_changepwd" OnClick="btn_changepwd_Click" runat="server" CssClass="btn btn-success" Text="Submit" />
        </div>
        <div class="col-md-4"></div>
    </div>
</asp:Content>
