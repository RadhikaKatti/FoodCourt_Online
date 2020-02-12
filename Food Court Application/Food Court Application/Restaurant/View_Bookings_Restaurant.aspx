<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/Restaurant_Master_Page.Master" AutoEventWireup="true" CodeBehind="View_Bookings_Restaurant.aspx.cs" Inherits="Food_Court_Application.Restaurant.View_Bookings_Restaurant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit"  EmptyDataText="No Data To Display">
                    <Columns>
                        <asp:TemplateField HeaderText="User_Id" Visible="false">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("User_Id") %>' ID="Label2"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
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
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" Text='<%# Bind("Status") %>' runat="server" CssClass="form-control">
                                    <asp:ListItem>Processing</asp:ListItem>
                                    <asp:ListItem>Order Packing</asp:ListItem>
                                    <asp:ListItem>Order PickUp</asp:ListItem>
                                    <asp:ListItem>Near to You</asp:ListItem>
                                     <asp:ListItem>Delivered</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
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
