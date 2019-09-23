<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Lab._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="navbar">
                <asp:Menu ID="Menu1" runat="server" ForeColor="Black" Orientation="Horizontal">
                    <DynamicMenuStyle BackColor="#00CCFF" />
                    <Items>
                        <asp:MenuItem Enabled="False" Text="Inov-8 Tech" Value="Inov-8 Tech" Selectable="False"></asp:MenuItem>
                        <asp:MenuItem Text="Products" Value="Products"></asp:MenuItem>
                        <asp:MenuItem Text="About Us" Value="About Us"></asp:MenuItem>
                        <asp:MenuItem Text="Contact Us" Value="Contact Us"></asp:MenuItem>
                        <asp:MenuItem Text="Sign Up" Value="Sign Up" NavigateUrl="register.aspx"></asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="White" ForeColor="Black" />
                    <StaticMenuItemStyle HorizontalPadding="50px" />
                    <StaticMenuStyle BackColor="#00CCFF" HorizontalPadding="50px" />
                </asp:Menu>
                <asp:Image ID="imgHome" style="" runat="server" Height="500px" ImageUrl="~/images/homeImage.jpeg" Width="765px" />

            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
