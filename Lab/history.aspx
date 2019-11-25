<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="history.aspx.cs" Inherits="Lab.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container products-container">
    <div class="container">

        <h3>Purchase History</h3>
        <br />
        <asp:GridView ID="HistoryGrid" runat="server" AutoGenerateColumns="false" CssClass="table table-striped">
            <Columns>
                <asp:BoundField DataField="product" HeaderText="Name" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity"/>
                <asp:BoundField DataField="price" HeaderText="Price"/>
            </Columns>
        </asp:GridView>
    </div>
    </div>
</asp:Content>
