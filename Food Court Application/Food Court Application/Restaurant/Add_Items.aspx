<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/Restaurant_Master_Page.Master" AutoEventWireup="true" CodeBehind="Add_Items.aspx.cs" Inherits="Food_Court_Application.Restaurant.Add_Items" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <center><h3>Add Items</h3></center>
    <br />
    <div class="row">
        <div class="col-md-4">
            <asp:TextBox ID="txtrestaurantid" Visible="false" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label1" Font-Bold="true" runat="server" Text="Category"></asp:Label>            
        </div>
        <div class="col-md-2 form-group">
            <asp:DropDownList ID="DropDownList1" required="" runat="server" CssClass="form-control">
                <asp:ListItem>Pizza</asp:ListItem>
                <asp:ListItem>Mexican</asp:ListItem>
                <asp:ListItem>American</asp:ListItem>
                <asp:ListItem>Asian</asp:ListItem>
                <asp:ListItem>Chinese</asp:ListItem>
                <asp:ListItem>Sandwhiches</asp:ListItem>
                <asp:ListItem>Vegetarian</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-5"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label2"  Font-Bold="true"  runat="server" Text="Product"></asp:Label>            
        </div>
        <div class="col-md-2 form-group">
            <asp:TextBox ID="txtproduct" required="" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-5"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label3"  Font-Bold="true" runat="server" Text="Price"></asp:Label>            
        </div>
        <div class="col-md-2 form-group">
            <asp:TextBox ID="txtprice" required="" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-5"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label4"  Font-Bold="true" runat="server" Text="Photo"></asp:Label>            
        </div>
        <div class="col-md-2 form-group">
            <asp:FileUpload ID="FileUpload1" required="" runat="server" />
        </div>
        <div class="col-md-5"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 form-group text-center">
            <asp:Button ID="btn_additems" runat="server" CssClass="btn btn-success" Text="AddItems" OnClick="btn_additems_Click" />
        </div>
        <div class="col-md-4"></div>
    </div>
</asp:Content>
