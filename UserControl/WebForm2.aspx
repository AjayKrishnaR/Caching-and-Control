<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="UserControl.WebForm2" %>

<%@ Register Src="~/Fragment.ascx" TagPrefix="cc" TagName="Fragment" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:panel runat="server" GroupingText="User Control">
        <cc:Fragment runat="server" id="Fragment" />
</asp:panel>
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
