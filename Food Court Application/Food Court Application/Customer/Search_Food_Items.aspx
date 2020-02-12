<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer_Master_Page.Master" AutoEventWireup="true" CodeBehind="Search_Food_Items.aspx.cs" Inherits="Food_Court_Application.Customer.Search_Food_Items" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-2 form-group text-right">
            <asp:Label ID="Label1" Font-Bold="true" runat="server" Text="Restaurant/Category/Item"></asp:Label>
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="txtsearch" required="" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-2 form-group">
            <asp:Button ID="btnSearch" OnClick="btnSearch_Click" runat="server" CssClass="btn btn-success" Text="Search" />
        </div>
        <div class="col-md-2"></div>
    </div>
    <br />
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" EmptyDataText="There is no Food Items found">
        <Columns>
            <asp:TemplateField HeaderText="Item_Id" Visible="false">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("Item_Id") %>' ID="Label1"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Restaurant Name">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("Restaurant_Name") %>' ID="Label2"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Restaurant Id" Visible="false">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("Restaurant_Id") %>' ID="Label6"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("Category") %>' ID="Label3"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Product">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("Product") %>' ID="Label4"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("Price") %>' ID="Label5"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Photo">
                <ItemTemplate>
                    <asp:Image ID="Image1" ImageUrl='<%# Eval("Photo") %>' Height="50px" Width="60px" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click1" runat="server">Order</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
