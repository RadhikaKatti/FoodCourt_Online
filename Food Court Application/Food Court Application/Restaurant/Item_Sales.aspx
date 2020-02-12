<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/Restaurant_Master_Page.Master" AutoEventWireup="true" CodeBehind="Item_Sales.aspx.cs" Inherits="Food_Court_Application.Restaurant.Item_Sales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-2">
            <div class="form-group">
                <span style="font-size: 12px;">&nbsp;&nbsp;<b>From Date</b></span>
                <asp:TextBox ID="txtfdate" AutoComplete="off" runat="server" CssClass="form-control" type="date" required></asp:TextBox>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <span style="font-size: 12px;">&nbsp;&nbsp;<b>To Date</b></span>
                <asp:TextBox ID="txttodate" AutoComplete="off" runat="server" CssClass="form-control" type="date" required></asp:TextBox>
            </div>
        </div>
        <div class="col-md-2 text-center">
            <div class="form-group">
                <br />
                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-success" OnClick="btnSearch_Click" />
            </div>
        </div>
        <div class="col-md-3">&nbsp;</div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False" EmptyDataText="No Data to Display">
                    <Columns>
                        <asp:TemplateField HeaderText="Date">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("Date") %>' ID="Label4"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Booking_Id">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("Booking_Id") %>' ID="Label3"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Customer Name">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="Label9"></asp:Label>
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
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("Quantity") %>' ID="Label6"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Amount">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("Amount") %>' ID="Label7"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("Status") %>' ID="Label8"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Photo">
                            <ItemTemplate>
                                <asp:Image ID="Image1" ImageUrl='<%# Eval("Photo") %>' Height="50px" Width="60px" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
