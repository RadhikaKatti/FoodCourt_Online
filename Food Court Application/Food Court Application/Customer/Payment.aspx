<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer_Master_Page.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Food_Court_Application.Customer.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-2">
            <asp:Label ID="Label3"  Font-Bold="true" runat="server" Text="Booking Id"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtbookingid" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-4"></div>
    </div>
    <br />
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-2">
            <asp:Label ID="Label6"  Font-Bold="true" runat="server" Enabled="false" Text="Select Card"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" >
                <asp:ListItem Selected="True">Debit Card</asp:ListItem>
                <asp:ListItem>Credit Card</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="col-sm-4"></div>
    </div>
    <br />
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-2">
            <asp:Label ID="Label1"  Font-Bold="true" runat="server" Text="CardHolder"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtcardholder" required="" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-4"></div>
    </div>
    <br />
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-2">
            <asp:Label ID="Label4"   Font-Bold="true" runat="server" Text="Card Number"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtcardnumber" required="" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcardnumber" ErrorMessage="Enter Valid Card Number" ValidationExpression="[0-9]{16}"></asp:RegularExpressionValidator>
        </div>
        <div class="col-sm-4"></div>
    </div>
    <br />
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-2">
            <asp:Label ID="Label2"  Font-Bold="true" runat="server" Text="Cvv"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtcvv" required="" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcvv" ErrorMessage="Enter Valid CVV" ValidationExpression="[0-9]{3}"></asp:RegularExpressionValidator>
        </div>
        <div class="col-sm-4"></div>
    </div>
    <br />
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-2">
            <asp:Label ID="Label5"  Font-Bold="true" runat="server" Text="Expire Date"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtexdate" required="" CssClass="form-control" type="date" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-4"></div>
    </div>
    <br />
    <div class="row">
        <div class="col-sm-5"></div>
        <div class="col-sm-2">
            <asp:Button ID="btnPay" runat="server" Text="Pay Now" OnClick="btnPay_Click" CssClass="btn btn-success" />
        </div>
        <div class="col-sm-5"></div>
    </div>

</asp:Content>
