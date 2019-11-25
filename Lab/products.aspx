<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Lab.WebForm2" %>

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
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="productID" AutoGenerateColumns="false" CssClass="table table-striped" Width="50%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="productName" HeaderText="Name" />
                        <asp:BoundField DataField="productDescription" HeaderText="Description" />
                        <asp:BoundField DataField="unitPrice" HeaderText="Price" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="select" commandname="Select" runat="server" OnClick="GridView1_SelectedIndexChanged">Add To Cart</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </div>
        </div>
        <!-- //cart's-Product-Display -->

        <%--		<div class="wthreecartaits wthreecartaits2 cart cart box_1">
			<form action="#" method="post" class="last">
				<input type="hidden" name="cmd" value="_cart" />
				<input type="hidden" name="display" value="1" />
                <div class="text-center">
                    <button class="w3view-cart btn btn-primary" type="submit" name="submit" value="">View Cart
					<span class="fa fa-cart-arrow-down" aria-hidden="true"></span>
				</button>
                </di>
				
			</form>
		</div>--%>

    </div>

</asp:Content>
