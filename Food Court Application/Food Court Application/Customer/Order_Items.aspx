<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer_Master_Page.Master" AutoEventWireup="true" CodeBehind="Order_Items.aspx.cs" Inherits="Food_Court_Application.Customer.Order_Items" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h3 style="margin-left:-180px">Booking Item Details</h3></center>    
    <div class="row">
        <div class="col-sm-7">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-3 form-group">
                    <asp:Label ID="Label9"  Font-Bold="true" runat="server" Text="BookingId"></asp:Label>
                </div>
                <div class="col-md-4 form-group">
                    <asp:TextBox ID="txtbookingid" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <asp:TextBox ID="txtitemid"  visible="false" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-3 form-group">
                    <asp:Label ID="Label1"  Font-Bold="true" runat="server" Text="Restaurant Name"></asp:Label>
                </div>
                <div class="col-md-4 form-group">
                    <asp:TextBox ID="txtrestaurantname" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-3 form-group">
                    <asp:Label ID="Label2"  Font-Bold="true" runat="server" Text="Category"></asp:Label>
                </div>
                <div class="col-md-4 form-group">
                    <asp:TextBox ID="txtcategory" required="" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-3 form-group">
                    <asp:Label ID="Label3"  Font-Bold="true" runat="server" Text="Product"></asp:Label>
                </div>
                <div class="col-md-4 form-group">
                    <asp:TextBox ID="txtproduct" required="" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-3 form-group">
                    <asp:Label ID="Label4"  Font-Bold="true" runat="server" Text="Price"></asp:Label>
                </div>
                <div class="col-md-4 form-group">
                    <asp:TextBox ID="txtprice" required="" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-3 form-group">
                    <asp:Label ID="Label7"  Font-Bold="true" runat="server" Text="Quantity"></asp:Label>
                </div>
                <div class="col-md-4 form-group">
                    <asp:TextBox ID="txtqty" required="" runat="server" OnTextChanged="txtqty_TextChanged" AutoPostBack="true" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-3 form-group">
                    <asp:Label ID="Label8"  Font-Bold="true" runat="server" Text="Amount"></asp:Label>
                </div>
                <div class="col-md-4 form-group">
                    <asp:TextBox ID="txtamount"   runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
        <div class="col-sm-2">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-0 form-group">
                    <asp:Label ID="Label5"  Font-Bold="true" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-md-5 form-group">
                    <asp:Image ID="Image1" Width="250px" Height="250px" Style="border-radius: 50%;" runat="server" />
                </div>
                <div class="col-md-5"></div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group text-center">
            <asp:Button ID="btn_orderitems" runat="server" CssClass="btn btn-success" Text="Confirm" OnClick="btn_orderitems_Click" />
        </div>
        <div class="col-md-7"></div>
    </div>
    <div class="col-sm-2"></div>
</asp:Content>
