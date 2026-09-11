<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatabaseTest.aspx.cs" Inherits="womensos.DatabaseTest" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>WomenSOS Database Test</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center; margin-top:100px;">
            <h2>WomenSOS Database Connection</h2>

            <asp:Button ID="btnTest" runat="server"
                Text="Test Database Connection"
                OnClick="btnTest_Click" />

            <br /><br />

            <asp:Label ID="lblMessage" runat="server"
                Font-Size="Large">
            </asp:Label>
        </div>
    </form>
</body>
</html>