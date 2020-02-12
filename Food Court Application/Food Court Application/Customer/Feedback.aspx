<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer_Master_Page.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Food_Court_Application.Customer.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br />
    <center><h3>Feedback</h3></center>
    <br />
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label2"  Font-Bold="true" runat="server" Text="Feedback"></asp:Label>            
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="txtfeedback" TextMode="MultiLine" required="" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 form-group text-center">
            <asp:Button ID="btn_Feedback" OnClick="btn_Feedback_Click" runat="server" CssClass="btn btn-success" Text="Submit" />
        </div>
        <div class="col-md-4"></div>
    </div>
</asp:Content>
