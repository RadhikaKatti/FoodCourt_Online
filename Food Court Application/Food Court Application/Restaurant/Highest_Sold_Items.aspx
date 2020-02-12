<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/Restaurant_Master_Page.Master" AutoEventWireup="true" CodeBehind="Highest_Sold_Items.aspx.cs" Inherits="Food_Court_Application.Restaurant.Highest_Sold_Items" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .OrderHistory_RowSeparator { margin: 0px 0px 5px 0px; }
    </style>
    <center><h3>Top 5 Sold Items</h3></center>
    <br />
    <div class="row">
        <div class="col-sm-12">
            <asp:DataList ID="dlSoldItems" Visible="true" runat="server" EmptyDataText="No Data to Display" RepeatColumns="5" CellSpacing="10">
                <ItemStyle  Width="19%" />
                <ItemTemplate>
                    <div style="border-radius:10px; border-color: lightgray; border-style: solid" class="items">
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10 form-group text-center">
                                <asp:Label ID="lblCategory" runat="server" Text='<%#Eval("Category")%>'></asp:Label>
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10 form-group">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Photo") %>' Width="100%" Height="200px" />
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10 form-group">
                                <asp:Label ID="lblProduct" runat="server" Text='<%#Eval("Product")%>'></asp:Label>
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10 form-group">
                                <asp:Label ID="lblPrice" runat="server" Text='<%#Eval("Price", "{0:N}")%>'></asp:Label>
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                    </div><br />
                </ItemTemplate> 
                <SeparatorTemplate>
                    <h4 class="OrderHistory_RowSeparator"></h4>
                </SeparatorTemplate>
            </asp:DataList>
        </div>
    </div><br />
</asp:Content>
