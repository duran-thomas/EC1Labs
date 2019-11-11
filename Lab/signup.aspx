<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Lab.WebForm5" %>

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
    <br />
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-7">
                <div class="card">
                    <div class="card-header">Register</div>
                    <div class="card-body">

                        <div class="form-group">
                            <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This Field Cannot Be Blank" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <asp:TextBox ID="txtFirstName" runat="server" type="text" CssClass="form-control" placeholder="Enter First Name Here"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblLastName" runat="server" Text="Label">Last Name</asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="This Field Cannot Be Blank" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <asp:TextBox ID="txtLastName" type="text" CssClass="form-control" runat="server" placeholder="Enter Last Name Here"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="text-danger" runat="server" ErrorMessage="Invalid Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <asp:TextBox ID="txtEmail" type="text" CssClass="form-control" runat="server" placeholder="Enter Email Here"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label IsD="lblDateOfBirth" runat="server" Text="Date Of Birth"></asp:Label>
                            <asp:CustomValidator ID="CustomValidator1" CssClass="text-danger" runat="server" ErrorMessage="" ControlToValidate="txtDateOfBirth" ClientValidationFunction="ValidateDOB"></asp:CustomValidator>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <asp:TextBox ID="txtDateOfBirth" type="text" CssClass="form-control" placeholer="Enter DoB Here" runat="server"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number"></asp:Label>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" CssClass="text-danger" runat="server" ErrorMessage="Please Enter Phone Number In The Format ###-###-####" ValidationExpression="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$" ControlToValidate="txtPhoneNumber"></asp:RegularExpressionValidator>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <asp:TextBox ID="txtPhoneNumber" type="text" CssClass="form-control" placeholder="###-###-####" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="text-danger" runat="server" ErrorMessage="Required *" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <asp:TextBox ID="txtPassword" type="password" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
                            <asp:CompareValidator ID="CompareValidator1" CssClass="text-danger" runat="server" ErrorMessage="Passwords Must Match" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"></asp:CompareValidator>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <asp:TextBox ID="txtConfirmPassword" type="password" CssClass="form-control" placeholder="Confrim Password" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="form-group ">
                            <asp:Button ID="btnSubmit" runat="server" CssClass="form-control btn btn-primary" Text="Submit" OnClick="btnSubmit_Click" />
                        </div>

                    </div>

                </div>
            </div>

            <div class="col-md-5">
                <div class="card">
                    <div class="card-header">Error Summary</div>
                    <div class="card-body">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
