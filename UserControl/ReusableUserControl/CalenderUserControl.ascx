<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CalenderUserControl.ascx.cs" Inherits="UserControl.ReusableUserControl.CalenderUserControl" %>
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
                    <asp:Calendar ID="CalDate" runat="server" OnSelectionChanged="CalDate_SelectionChanged" Visible="false"></asp:Calendar>
                </td>
            </tr>
        </table>
    </div>