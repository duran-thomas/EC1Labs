<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="Lab.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container products-container">
        <!-- cart's-Product-Display -->
        <div class="wthreeproductdisplay">
            <div class="container">
                <h3>Products</h3>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped" Width="50%">
                    <columns>
                        <asp:BoundField DataField="productID" HeaderText="ID" Visible="false" />
                        <asp:BoundField DataField="productName" HeaderText="Name" />
                        <asp:BoundField DataField="productDescription" HeaderText="Description" />
                        <asp:BoundField DataField="unitPrice" HeaderText="Price"  />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="select" runat="server" OnClick="GridView1_SelectedIndexChanged">Add To Cart</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </columns>

                </asp:GridView>
            </div>
        </div>

    </div>

</asp:Content>
