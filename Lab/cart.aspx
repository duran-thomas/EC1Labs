<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="Lab.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container products-container">
        <div class="container">

            <h3>Cart</h3>
            <br />

            <asp:GridView ID="CartGrid" runat="server" AutoGenerateColumns="false" CssClass="table table-striped">
                <Columns>
                    <asp:BoundField DataField="productID" HeaderText="ID" Visible="false"/>
                    <asp:BoundField DataField="product" HeaderText="Name" />
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" ID="select" OnClick="CartGrid_SelectedIndexChanged">Checkout</asp:LinkButton>
                        </ItemTemplate>
                        
                    </asp:TemplateField>
 
                </Columns>
            </asp:GridView>
        </div>
    </div>

</asp:Content>
