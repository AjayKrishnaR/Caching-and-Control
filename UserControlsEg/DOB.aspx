<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DOB.aspx.cs" Inherits="UserControlsEg.DOB" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <%-- <cc:FullCalenderControl runat="server" id="FullCalenderControl1" />--%>
        <cc:cusCalender runat="server" ID="CalenderControl"></cc:cusCalender>

    </div>
    </form>
</body>
</html>
