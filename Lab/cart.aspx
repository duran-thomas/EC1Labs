<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Lab.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container products-container">
    <div class="container">

        <h3>Cart</h3>
        <br />

        <asp:GridView ID="CartGrid" runat="server" AutoGenerateColumns="false" CssClass="table table-striped">
            <Columns>
                <asp:BoundField DataField="product" HeaderText="Name" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity"/>
                <asp:BoundField DataField="price" HeaderText="Price"/>
            </Columns>
        </asp:GridView>
    </div>
    </div>

</asp:Content>
