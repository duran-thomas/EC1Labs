<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="Lab.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    function ValidateDOB(sender, args) {
        //Get the date from the TextBox.
        var dateString = document.getElementById(sender.controltovalidate).value;
        var regex = /(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$/;
 
        //Check whether valid dd/MM/yyyy Date Format.
        if (regex.test(dateString)) {
            var parts = dateString.split("/");
            var dtDOB = new Date(parts[1] + "/" + parts[0] + "/" + parts[2]);
            var dtCurrent = new Date();
            sender.innerHTML = "Must Be 18 And Over To Register"
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() < 18) {
                args.IsValid = false;
                return;
            }
 
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() == 18) {
 
                //CD: 11/06/2018 and DB: 15/07/2000. Will turned 18 on 15/07/2018.
                if (dtCurrent.getMonth() < dtDOB.getMonth()) {
                    args.IsValid = false;
                    return;
                }
                if (dtCurrent.getMonth() == dtDOB.getMonth()) {
                    //CD: 11/06/2018 and DB: 15/06/2000. Will turned 18 on 15/06/2018.
                    if (dtCurrent.getDate() < dtDOB.getDate()) {
                        args.IsValid = false;
                        return;
                    }
                }
            }
            args.IsValid = true;
        } else {
            sender.innerHTML = "Enter date in dd/mm/yyyy format ONLY."
            args.IsValid = false;
        }
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblFirstName" runat="server" Text="First Name:  "></asp:Label><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required *" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
<%--                <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="CustomValidator" ClientValidationFunction="txtFirstName"></asp:CustomValidator>--%>
                <br />
                <br />
                <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
<%--                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name Must Be More Than 5 Characters"></asp:RangeValidator>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required *" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label><asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style1"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required *" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label IsD="lblDateOfBirth" runat="server" Text="Date Of Birth: "></asp:Label><asp:TextBox ID="txtDateOfBirth" runat="server"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="" ControlToValidate="txtDateOfBirth" ClientValidationFunction="ValidateDOB"></asp:CustomValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required *" ControlToValidate="txtDateOfBirth"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number: "></asp:Label><asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Phone Number In The Format ###-###-####" ValidationExpression="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$" ControlToValidate="txtPhoneNumber"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required *" ControlToValidate="txtPhoneNumber"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required *" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password: "></asp:Label><asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords Must Match" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required *" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </div>
        </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

</asp:Content>
