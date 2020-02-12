<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer_Master_Page.Master" AutoEventWireup="true" CodeBehind="View_Bookings.aspx.cs" Inherits="Food_Court_Application.Customer.View_Bookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False" EmptyDataText="No Data To Display">
                        <Columns>
                            <asp:TemplateField HeaderText="UserId" Visible="false">
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
                                    <asp:Label runat="server" Text='<%# Bind("Booking_Id") %>' ID="Label4"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Restaurant_Name">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Bind("Restaurant_Name") %>' ID="Label3"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Bind("Price") %>' ID="Label5"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Product">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Bind("Product") %>' ID="Label6"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Item_id" Visible="false">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Bind("Item_Id") %>' ID="Label9"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Restaurant_id" Visible="false">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Bind("Restaurant_Id") %>' ID="Label10"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Quantity">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Bind("Quantity") %>' ID="Label7"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Amount">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Bind("Amount") %>' ID="Label8"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Bind("Status") %>' ID="Label71"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" ImageUrl='<%# Eval("Photo") %>' Height="50px" Width="60px" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="FeedBack">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" runat="server">FeedBack</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
</asp:Content>
