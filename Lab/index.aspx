<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Lab.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="jumbotron">
        <h1 class="display-4">Featured Product</h1>
        <p class="lead">Learn Advanced Web Technologies</p>
        <hr class="my-4">
       <%-- <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>--%>
        <a class="btn btn-primary btn-lg" href="WebForm2.aspx" role="button">Learn more</a>
    </div>
</asp:Content>
