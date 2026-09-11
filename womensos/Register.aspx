<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="womensos.Register" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>WomenSOS - Registration</title>

    <style>
        body {
            font-family: Arial;
            background: #f5f7fb;
        }

        .register-box {
            width: 450px;
            margin: 40px auto;
            padding: 30px;
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .validator {
            color: red;
            font-size: 13px;
        }

        .btn-register {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 6px;
            background: #e91e63;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="register-box">

        <h2>Create Account</h2>

        <div class="form-group">
            <label>Full Name</label>

            <asp:TextBox ID="txtFullName" runat="server"
                CssClass="form-control"></asp:TextBox>

            <asp:RequiredFieldValidator
                ID="rfvFullName"
                runat="server"
                ControlToValidate="txtFullName"
                ErrorMessage="Full Name is required"
                CssClass="validator"
                Display="Dynamic">
            </asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label>Email</label>

            <asp:TextBox ID="txtEmail" runat="server"
                CssClass="form-control"></asp:TextBox>

            <asp:RequiredFieldValidator
                ID="rfvEmail"
                runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Email is required"
                CssClass="validator"
                Display="Dynamic">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator
                ID="revEmail"
                runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Enter a valid email address"
                ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                CssClass="validator"
                Display="Dynamic">
            </asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <label>Password</label>

            <asp:TextBox ID="txtPassword" runat="server"
                CssClass="form-control"
                TextMode="Password"></asp:TextBox>

            <asp:RequiredFieldValidator
                ID="rfvPassword"
                runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="Password is required"
                CssClass="validator"
                Display="Dynamic">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator
                ID="revPassword"
                runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="Password must be at least 6 characters"
                ValidationExpression="^.{6,}$"
                CssClass="validator"
                Display="Dynamic">
            </asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <label>Confirm Password</label>

            <asp:TextBox ID="txtConfirmPassword" runat="server"
                CssClass="form-control"
                TextMode="Password"></asp:TextBox>

            <asp:RequiredFieldValidator
                ID="rfvConfirmPassword"
                runat="server"
                ControlToValidate="txtConfirmPassword"
                ErrorMessage="Confirm Password is required"
                CssClass="validator"
                Display="Dynamic">
            </asp:RequiredFieldValidator>

            <asp:CompareValidator
                ID="cvPassword"
                runat="server"
                ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword"
                ErrorMessage="Passwords do not match"
                CssClass="validator"
                Display="Dynamic">
            </asp:CompareValidator>
        </div>

        <div class="form-group">
            <label>Phone</label>

            <asp:TextBox ID="txtPhone" runat="server"
                CssClass="form-control"></asp:TextBox>

            <asp:RequiredFieldValidator
                ID="rfvPhone"
                runat="server"
                ControlToValidate="txtPhone"
                ErrorMessage="Phone number is required"
                CssClass="validator"
                Display="Dynamic">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator
                ID="revPhone"
                runat="server"
                ControlToValidate="txtPhone"
                ErrorMessage="Enter a valid 10-digit phone number"
                ValidationExpression="^[0-9]{10}$"
                CssClass="validator"
                Display="Dynamic">
            </asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <label>Address</label>

            <asp:TextBox ID="txtAddress" runat="server"
                CssClass="form-control"
                TextMode="MultiLine"
                Rows="3"></asp:TextBox>

            <asp:RequiredFieldValidator
                ID="rfvAddress"
                runat="server"
                ControlToValidate="txtAddress"
                ErrorMessage="Address is required"
                CssClass="validator"
                Display="Dynamic">
            </asp:RequiredFieldValidator>
        </div>

        <asp:Button ID="btnRegister" runat="server"
            Text="Register"
            CssClass="btn-register"
            OnClick="btnRegister_Click" />

        <br /><br />

        <asp:ValidationSummary
            ID="ValidationSummary1"
            runat="server"
            HeaderText="Please correct the following:"
            CssClass="validator" />

        <asp:Label ID="lblMessage" runat="server"></asp:Label>

    </div>

</form>

</body>
</html>