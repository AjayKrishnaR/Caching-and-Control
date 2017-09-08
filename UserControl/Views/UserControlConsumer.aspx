<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserControlConsumer.aspx.cs" Inherits="UserControl.Views.UserControlConsumer" %>

<%@ Register Src="~/ReusableUserControl/CalenderUserControl.ascx" TagPrefix="uc1" TagName="CalenderUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--<uc1:CalenderUserControl runat="server" id="CalenderUserControl" />--%>
        <cc:calenderControl ID="CalenderControl" runat="server"></cc:calenderControl>
        <asp:Button ID="Button1" runat="server" Text="Get Date" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
