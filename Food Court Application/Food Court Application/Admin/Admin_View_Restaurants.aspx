<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master_Page.Master" AutoEventWireup="true" CodeBehind="Admin_View_Restaurants.aspx.cs" Inherits="Food_Court_Application.Admin.Admin_View_Restaurants" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" AutoGenerateEditButton="True" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:TemplateField HeaderText="Restaurant_Id">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Restaurant_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Restaurant_Name">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Restaurant_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Full_Name">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Full_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile_Number">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Mobile_Number") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Area">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Area") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" Text='<%# Bind("Status") %>' CssClass="form-control">
                                    <asp:ListItem>Pending</asp:ListItem>
                                    <asp:ListItem>Active</asp:ListItem>
                                    <asp:ListItem>Deactive</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Create_At">
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Created_At") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Update_At">
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("Updated_At") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>


</asp:Content>
