<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CachingExample.aspx.cs" Inherits="UserControl.CachingExample" %>
<%@ OutputCache Duration="60" VaryByParam="DropDownList1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            Select Designation Here :
            <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" OnSelectedIndexChanged ="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Text="Select All" Value="All"></asp:ListItem>
                <asp:ListItem Text="Manger" Value="Manager"></asp:ListItem>
                <asp:ListItem Text="DB" Value="DB"></asp:ListItem>
                <asp:ListItem Text="UI" Value="UI"></asp:ListItem>
                 <asp:ListItem Text="First" Value="First"></asp:ListItem>
                 <asp:ListItem Text="BA" Value="BA"></asp:ListItem>
                 <asp:ListItem Text="SD" Value="SD"></asp:ListItem>

            </asp:DropDownList>
            <br />
            <br />

            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>

        </div>
        <p>
            Server Side :&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
        <p>
            Client Side :
            <script type="text/javascript">
                document.write(Date());
            </script>
        </p>
        <p>
            &nbsp;
        </p>
    </form>
</body>
</html>
