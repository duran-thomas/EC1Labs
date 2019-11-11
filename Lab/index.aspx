<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Lab.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="jumbotron bg">
            <h1 class="display-4 container">Learn On Your Schedule</h1>
            <br />
            <p class="lead container">
                Study any topic, anytime. Explore thousands of courses starting
            </p>
        </div>
        <div class="bg-grey">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <h2>Featured Products</h2>
                    <br>
                    <p>These are our featured products for the month of November.</p>
                </div>
                <div class="col-sm-2">

                </div>
                <div class="col-sm-3">
                    <div>
                        <div class="thumbnail img-fluid img-thumbnail">
                            <img src="images/react.svg" />
                            <hr />
                            <div class="caption text-center">
                                <p><strong>React Bootcamp</strong></p>
                                <hr />
                                <p><a class="btn-sm btn-primary" href="products.aspx">View</a></p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="thumbnail img-fluid img-thumbnail">
                        <img src="images/dotnet.svg" />
                        <hr />
                        <div class="caption text-center">
                            <p><strong>.NET Bootcamp</strong></p>
                            <hr />
                            <p><a class="btn-sm btn-primary" href="products.aspx">View</a></p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        </div>
        <br />
    </div>
</asp:Content>
