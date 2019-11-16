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
				<div class="top-grid">

					<div class="cart-grid" id="cart-1">
						<div class="img">
							<img src="images/react.svg" alt="React">
						</div>
						<ul class="info">
							<li><center>React Bootcamp</center></li>
							<li class="right-text">$15</li>
						</ul>
						<div class="snipcart-details ">
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1">
								<input type="hidden" name="w3l_item" value="Striped Top ">
								<input type="hidden" name="amount" value="15">
								<input type="hidden" name="item_name" value="React Bootcamp" />
								<button type="submit" class="btn btn-primary" data-id="cart-1">Add To Cart</button>
							</form>
						</div>
					</div>

					<div class="cart-grid" id="cart-2">
						<div class="img">
							<img src="images/dotnet.svg" alt="dotNet">
						</div>
						<ul class="info">
							<li><center>DotNET Bootcamp</center></li>
							<li class="right-text">$15</li>
						</ul>
						<div class="snipcart-details">
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1">
								<input type="hidden" name="w3l_item" value="Striped Top ">
								<input type="hidden" name="amount" value="15">
								<input type="hidden" name="item_name" value="DotNET Bootcamp" />
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary" data-id="cart-3">Add To Cart</button>
                                </div>
								
							</form>
						</div>
					</div>

					<div class="cart-grid" id="cart-3">
						<div class="img">
							<img src="images/angular-icon.svg" alt="Angular">
						</div>
						<ul class="info">
							<li>Learn Angular</li>
							<li class="right-text">#50</li>
						</ul>
						<div class="snipcart-details ">
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1">
								<input type="hidden" name="w3l_item" value="Striped Top ">
								<input type="hidden" name="amount" value="50">
								<input type="hidden" name="item_name" value="Learn Angular" />
								<button type="submit" class="btn btn-primary" data-id="cart-3">Add To Cart</button>
							</form>
						</div>
					</div>

					<div class="cart-grid" id="cart-4">
						<div class="img">
							<img src="images/bootstrap.svg" alt="Bootstrap">
						</div>
						<ul class="info">
							<li>Bootstrap 4</li>
							<li class="right-text">$25</li>
						</ul>
						<div class="snipcart-details ">
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1">
								<input type="hidden" name="w3l_item" value="Striped Top ">
								<input type="hidden" name="amount" value="25">
								<input type="hidden" name="item_name" value="Bootstrap 4" />
								<button type="submit" class="btn btn-primary" data-id="cart-4">Add To Cart</button>
							</form>
						</div>
					</div>

					<div class="clear"></div>
				</div>

				<div class="bot-grid">
					<div class="cart-grid" id="cart-5">
						<div class="img">
							<img src="images/c-plusplus.svg" alt="C++">
						</div>
						<ul class="info">
							<li>Learn C++</li>
							<li class="right-text">$45</li>
						</ul>
						<div class="snipcart-details ">
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1">
								<input type="hidden" name="w3l_item" value="Striped Top ">
								<input type="hidden" name="amount" value="45">
								<input type="hidden" name="item_name" value="Learn C++" />
								<button type="submit" class="btn btn-primary" data-id="cart-5">Add To Cart</button>
							</form>
						</div>
					</div>

					<div class="cart-grid" id="cart-6">
						<div class="img">
							<img src="images/css-3.svg" alt="CSS 3">
						</div>
						<ul class="info">
							<li>CSS 3</li>
							<li class="right-text">$20</li>
						</ul>
						<div class="snipcart-details ">
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1">
								<input type="hidden" name="w3l_item" value="Striped Top ">
								<input type="hidden" name="amount" value="20">
								<input type="hidden" name="item_name" value="CSS 3" />
								<button type="submit" class="btn btn-primary" data-id="cart-6">Add To Cart</button>
							</form>
						</div>
					</div>

					<div class="cart-grid" id="cart-7">
						<div class="img">
							<img src="images/html-5.svg" alt="HTML 5">
						</div>
						<ul class="info">
							<li>HTML 5</li>
							<li class="right-text">$20</li>
						</ul>
						<div class="snipcart-details ">
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1">
								<input type="hidden" name="w3l_item" value="Striped Top ">
								<input type="hidden" name="amount" value="20">
								<input type="hidden" name="item_name" value="HTML 5" />
								<button type="submit" class="btn btn-primary" data-id="cart-7">Add To Cart</button>
							</form>
						</div>
					</div>

					<div class="cart-grid" id="cart-8">
						<div class="img">
							<img src="images/javascript.svg" alt="Javascript">
						</div>
						<ul class="info">
							<li>JavaScript</li>
							<li class="right-text">$20</li>
						</ul>
						<div class="snipcart-details ">
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1">
								<input type="hidden" name="w3l_item" value="Striped Top ">
								<input type="hidden" name="amount" value="20">
								<input type="hidden" name="item_name" value="JavaScript" />
								<button type="submit" class="btn btn-primary" data-id="cart-8">Add To Cart</button>
							</form>
						</div>
					</div>

					<div class="clear"></div>
				</div>
			</div>
		</div>		
	<!-- //cart's-Product-Display -->
		<div class="wthreecartaits wthreecartaits2 cart cart box_1">
			<form action="#" method="post" class="last">
				<input type="hidden" name="cmd" value="_cart" />
				<input type="hidden" name="display" value="1" />
                <div class="text-center">
                    <button class="w3view-cart btn btn-primary" type="submit" name="submit" value="">View Cart
					<span class="fa fa-cart-arrow-down" aria-hidden="true"></span>
				</button>
                </di>
				
			</form>
		</div>
    </div>
    
</asp:Content>
