<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogIn.aspx.cs" Inherits="SrProject.frmLogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>LOGIN</title>

        <!-- these are necessary INCLUDES for Bootstrap CSS, JavaScript, and jquery -->
            <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script> <!-- needed for js like dropdowns -->
            <script src="js/bootstrap.min.js"></script>
            <link href="css/bootstrap.css" rel="stylesheet" />
            <link href="css/CustomStyles.css" rel="stylesheet" />
        <!-- ---------------------------------------------------------------------- -->



</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">

            <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtStreet1" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtStreet2" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            <asp:DropDownList ID="ddlState" runat="server"></asp:DropDownList> <!-- I think this would make validation easier than letting them input -->
            <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>



        </div>
    </div>
    </form>
</body>
</html>
