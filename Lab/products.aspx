<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="https://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Untitled Document</title>
    <script type="text/javascript" src="jquery-1.3.2.js"></script>
    <script type="text/javascript" src="jquery.livequery.js"></script>
    <link href="css.css" rel="stylesheet" />
    <script type="text/javascript">

        $(document).ready(function () {

            var Arrays = new Array();

            $('#wrap li').mousemove(function () {

                var position = $(this).position();

                $('#cart').stop().animate({

                    left: position.left + 'px',

                }, 250, function () {

                });
            }).mouseout(function () {

            });

            $('#wrap li').click(function () {

                var thisID = $(this).attr('id');

                var itemname = $(this).find('div .name').html();
                var itemprice = $(this).find('div .price').html();

                if (include(Arrays, thisID)) {
                    var price = $('#each-' + thisID).children(".shopp-price").find('em').html();
                    var quantity = $('#each-' + thisID).children(".shopp-quantity").html();
                    quantity = parseInt(quantity) + parseInt(1);

                    var total = parseInt(itemprice) * parseInt(quantity);

                    $('#each-' + thisID).children(".shopp-price").find('em').html(total);
                    $('#each-' + thisID).children(".shopp-quantity").html(quantity);

                    var prev_charges = $('.cart-total span').html();
                    prev_charges = parseInt(prev_charges) - parseInt(price);

                    prev_charges = parseInt(prev_charges) + parseInt(total);
                    $('.cart-total span').html(prev_charges);

                    $('#total-hidden-charges').val(prev_charges);
                }
                else {
                    Arrays.push(thisID);

                    var prev_charges = $('.cart-total span').html();
                    prev_charges = parseInt(prev_charges) + parseInt(itemprice);

                    $('.cart-total span').html(prev_charges);
                    $('#total-hidden-charges').val(prev_charges);

                    $('#left_bar .cart-info').append('<div class="shopp" id="each-' + thisID + '"><div class="label">' + itemname + '</div><div class="shopp-price"> $<em>' + itemprice + '</em></div><span class="shopp-quantity">1</span><img src="remove.png" class="remove" /><br class="all" /></div>');

                    $('#cart').css({ '-webkit-transform': 'rotate(20deg)', '-moz-transform': 'rotate(20deg)' });
                }

                setTimeout('angle()', 200);
            });


            $('.remove').livequery('click', function () {

                var deduct = $(this).parent().children(".shopp-price").find('em').html();
                var prev_charges = $('.cart-total span').html();

                var thisID = $(this).parent().attr('id').replace('each-', '');

                var pos = getpos(Arrays, thisID);
                Arrays.splice(pos, 1, "0")

                prev_charges = parseInt(prev_charges) - parseInt(deduct);
                $('.cart-total span').html(prev_charges);
                $('#total-hidden-charges').val(prev_charges);
                $(this).parent().remove();

            });

            $('#Submit').livequery('click', function () {

                var totalCharge = $('#total-hidden-charges').val();

                $('#left_bar').html('Total Charges: $' + totalCharge);

                return false;

            });

        });

        function include(arr, obj) {
            for (var i = 0; i < arr.length; i++) {
                if (arr[i] == obj) return true;
            }
        }
        function getpos(arr, obj) {
            for (var i = 0; i < arr.length; i++) {
                if (arr[i] == obj) return i;
            }
        }
        function angle() { $('#cart').css({ '-webkit-transform': 'rotate(0deg)', '-moz-transform': 'rotate(0deg)' }); }

    </script>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="navbar">
                <asp:Menu ID="Menu1" runat="server" ForeColor="Black" Orientation="Horizontal">
                    <DynamicMenuStyle BackColor="#00CCFF" />
                    <Items>
                        <asp:MenuItem Text="Inov-8 Tech" Value="Inov-8 Tech" NavigateUrl="default.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Products" Value="Products" ImageUrl="products.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="About Us" Value="About Us"></asp:MenuItem>
                        <asp:MenuItem Text="Contact Us" Value="Contact Us"></asp:MenuItem>
                        <asp:MenuItem Text="Sign Up" Value="Sign Up" NavigateUrl="register.aspx"></asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="White" ForeColor="Black" />
                    <StaticMenuItemStyle HorizontalPadding="50px" />
                    <StaticMenuStyle BackColor="#00CCFF" HorizontalPadding="50px" />
                </asp:Menu>
            </div>
        </div>
    </form>

    <div align="left">

        <div id="wrap" align="left">

            <ul>
                <li id="1">
                    <img src="a1.png" class="items" height="100" alt="" />

                    <br clear="all" />
                    <div><span class="name">Learn Java: Price</span>: $<span class="price">800</span> </div>
                </li>
                <li id="2">
                    <img src="5.png" class="items" height="100" alt="" />

                    <br clear="all" />
                    <div><span class="name">Learn HTML </span>: $<span class="price">500 </span></div>
                </li>
                <li id="3">
                    <img src="1.png" class="items" height="100" alt="" />

                    <br clear="all" />
                    <div><span class="name">Learn Android </span>: $<span class="price">450</span></div>
                </li>

                <li id="4">
                    <img src="6.png" class="items" height="100" alt="" />

                    <br clear="all" />
                    <div><span class="name">Learn SVG </span>: $<span class="price">1200 </span></div>
                </li>
                <li id="5">
                    <img src="7.png" class="items" height="100" alt="" />

                    <br clear="all" />
                    <div><span class="name">Learn Bootstrap</span>: $<span class="price">65</span></div>
                </li>

                <li id="6">
                    <img src="5.png" class="items" height="100" alt="" />

                    <br clear="all" />
                    <div><span class="name">Learn HTML</span>: $<span class="price">800</span> </div>
                </li>

                <li id="7">
                    <img src="7.png" class="items" height="100" alt="" />

                    <br clear="all" />
                    <div><span class="name">Learn Bootstrap </span>: $<span class="price">45</span></div>
                </li>
                <li id="8">
                    <img src="6.png" class="items" height="100" alt="" />

                    <br clear="all" />
                    <div><span class="name">Learn SVG</span>: $<span class="price">900 </span></div>
                </li>

                <li id="9">
                    <img src="8.png" class="items" height="100" alt="" />

                    <br clear="all" />
                    <div><span class="name">Learn Angular Js </span>: $<span class="price">20</span></div>
                </li>

            </ul>

            <br clear="all" />



        </div>

        <div id="left_bar">

            <form action="#" id="cart_form" name="cart_form">

                <div class="cart-info"></div>

                <div class="cart-total">

                    <b>Total Charges:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> $<span>0</span>

                    <input type="hidden" name="total-hidden-charges" id="total-hidden-charges" value="0" />
                </div>

                <button type="submit" id="Submit">CheckOut</button>

            </form>

        </div>



    </div>



</body>
</html>
