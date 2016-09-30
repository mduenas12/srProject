<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="SrProject.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

            <center><h1>let's make all initial work apply to this "firstTestBranch" branch instead of Master :).</h1></center>
            <center><h2>Are you ready for this?? :)</h2></center>

            <asp:LinkButton ID="btnGoHome" runat="server" PostBackUrl="~/frmManagerHome.aspx">HomePage</asp:LinkButton>
        </div>
    </div>
    </form>
</body>
</html>
