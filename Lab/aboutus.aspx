<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="Lab.aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar">
                <asp:Menu ID="Menu1" runat="server" ForeColor="Black" Orientation="Horizontal">
                    <DynamicMenuStyle BackColor="#00CCFF" />
                    <Items>
                        <asp:MenuItem Enabled="False" Text="Inov-8 Tech" Value="Inov-8 Tech" Selectable="False"></asp:MenuItem>
                        <asp:MenuItem Text="Products" Value="Products" NavigateUrl="products.aspx"></asp:MenuItem>
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
</body>
</html>
