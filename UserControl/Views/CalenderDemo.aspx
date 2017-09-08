<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalenderDemo.aspx.cs" Inherits="UserControl.Views.CalenderDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblDate" runat="server" Text="DoB"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:ImageButton ID="imgButton" runat="server" ImageUrl="~/Images/calender.jpg" Height="30px" OnClick="imgButton_Click"/>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Calendar ID="CalDate" runat="server" OnSelectionChanged="CalDate_SelectionChanged"></asp:Calendar>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
