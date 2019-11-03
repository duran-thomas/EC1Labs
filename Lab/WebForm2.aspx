<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Lab.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <%-- <div align="center">--%>

            <div id="wrap" align="left">

                <ul>
                    <li id="1">
                        <img src="./images/cyber.jpeg" class="items" height="100" alt="" />

                        <br />
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

                <br />

            </div>
            <div id="left_bar"">

                <form action="#" id="cart_form" name="cart_form">

                    <div class="cart-info"></div>

                    <div class="cart-total">

                        <b>Total Charges:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> $<span>0</span>

                        <input type="hidden" name="total-hidden-charges" id="total-hidden-charges" value="0" />
                    </div>

                    <button type="submit" id="Submit">CheckOut</button>

                </form>

            </div>
        <%--</div>--%>
</asp:Content>
