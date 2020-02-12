<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Customer_Registration.aspx.cs" Inherits="Food_Court_Application.Customer_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h3>Customer Registration</h3></center>
    <br />
    <div class="row">
        <div class="col-md-4">
            <asp:TextBox ID="txtuserid" runat="server" Visible="false" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label1"  Font-Bold="true" runat="server" Text="FirstName"></asp:Label>
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="txtfname"  required="" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label2"  Font-Bold="true" runat="server" Text="MiddleName"></asp:Label>
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="txtmname"  required="" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label3" Font-Bold="true" runat="server" Text="LastName"></asp:Label>
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="txtlname" required="" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label4"  Font-Bold="true" runat="server" Text="EmailId"></asp:Label>
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="txtemail"  required=""  runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label5"  Font-Bold="true" runat="server" Text="MobileNumber"></asp:Label>
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="txtmob"  required="" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmob" ErrorMessage="Enter valid Mobile No" ValidationExpression="[7-9][{1}[0-9]{9}"></asp:RegularExpressionValidator>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-1 form-group">
            <asp:Label ID="Label6"  Font-Bold="true" runat="server" Text="Address"></asp:Label>
        </div>
        <div class="col-md-3 form-group">
            <asp:TextBox ID="txtadrs" required="" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 form-group text-center">
            <asp:Button ID="btn_customer_registration" runat="server" CssClass="btn btn-success" Text="Register" OnClick="btn_customer_registration_Click" />
        </div>
        <div class="col-md-4"></div>
    </div>
</asp:Content>
