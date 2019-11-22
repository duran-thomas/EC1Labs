<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="manageuser.aspx.cs" Inherits="Lab.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblLastname" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="dob" runat="server" Text="DOB"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtDob" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTelephone" runat="server" Text="Phone Number"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
                </td>
            </tr>
                        <tr>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
                        <tr>
                <td>
                    <asp:Label ID="lblRole" runat="server" Text="Role"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtRole" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:Button ID="btnSave" runat="server" Text="Save"  OnClick="btnSave_Click"/>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click"/>
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click"/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan ="2">
                    <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan ="2">
                    <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="gvProduct" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="username" HeaderText="Email"/>
                <asp:BoundField DataField="firstname" HeaderText="First Name"/>
                <asp:BoundField DataField="lastname" HeaderText="Last Name"/>
                <asp:BoundField DataField="dob" HeaderText="DOB"/>
                <asp:BoundField DataField="telephone" HeaderText="Telephone"/>
                <asp:BoundField DataField="password" HeaderText="Password"/>
                <asp:BoundField DataField="role" HeaderText="Role"/>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkSelect" runat="server" CommandArgument='<%# Eval("UserName") %>' OnClick="lnkSelect_OnClick">Select</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
    </div>
</asp:Content>
