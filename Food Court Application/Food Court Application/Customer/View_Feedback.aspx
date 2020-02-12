<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer_Master_Page.Master" AutoEventWireup="true" CodeBehind="View_Feedback.aspx.cs" Inherits="Food_Court_Application.Customer.View_Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" Width="50%" CssClass="table table-striped table-bordered table-hover" runat="server"></asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
