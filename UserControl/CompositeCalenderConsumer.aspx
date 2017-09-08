<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompositeCalenderConsumer.aspx.cs" Inherits="UserControl.CompositeCalenderConsumer" %>

<%@ Register Assembly="ServerControlNew" Namespace="ServerControlNew" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <cc1:CompositeCalender ID="CompositeCalender1" runat="server" />
    </div>
    </form>
</body>
</html>
