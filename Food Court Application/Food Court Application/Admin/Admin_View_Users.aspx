<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master_Page.Master" AutoEventWireup="true" CodeBehind="Admin_View_Users.aspx.cs" Inherits="Food_Court_Application.Admin.Admin_View_Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover"></asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
