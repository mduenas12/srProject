<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="SrProject.frmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>LOGON</title>

    <!-- these are necessary INCLUDES for Bootstrap CSS, JavaScript, and jquery -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
    <!-- needed for js like dropdowns -->
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/CustomStyles.css" rel="stylesheet" />
    <!-- ---------------------------------------------------------------------- -->



</head>
<body style="height: 628px">
    <form id="form1" runat="server">
        <div>
            <!--main div -->

            <div class="container-fluid">
                <!-- ISSUE  = this navbar is overwriting the controls below, because they are positioned at the top as well, not below this container
                                              fixed by changing from "navbar-fixed-top" to "navbar-static-top" -->
                <nav class="navbar navbar-default navbar-static-top" role="navigation">System Name/Logo Here</nav>
                <!-- /navbar (will be stuck at top of screen, won't come down when scrolling)-->
            </div>
            <!-- /container-fluid -->

            <div class="container-fluid" style="border-style: solid; border-color: red; margin-top: 30px; position: fixed; top: 50%; left: 50%; width: 100%; transform: translate(-50%,-50%);">

                <div class="row" style="border-style: solid; border-color: purple;"><!--  background-color: #eee -->
                    <!-- code snippet inspired by https://blogs.msdn.microsoft.com/cdndevs/2015/04/29/evolving-asp-net-appsapplication-style-and-layout/ -->


                    <%--<div class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4" style="border-style: solid; border-color: blue;">--%>
                    <div class="col-lg-2 col-md-2 col-sm-2 hidden-xs" style="border-style: solid; border-color: blue;"></div> <!-- buffer col left-->
                   


                    <div class="col-lg-4 col-md-4 col-sm-4 hidden-xs" style="border-style: solid; border-color: blue; min-height: 300px;"></div><!-- for picture on left-->
                    
                    <div class="col-lg-4 col-md-4 col-sm-4" style="border-style: solid; border-color: orchid; min-height: 300px;">
                       
                        <div class="vertical-center" style="width: 100%;">
                            
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="glyphicon glyphicon-user"></i>
                                    </span>
                                    <input runat="server" type="text" class="form-control" placeholder="Username" id="txtUser" />
                                    <%--<asp:RequiredFieldValidator ID="txtUserValidate" CssClass="text-danger" runat="server" ErrorMessage="Please enter user name." ControlToValidate="txtUser"></asp:RequiredFieldValidator> --%>
                                </div><!--/class="input-group"-->
                                
                            </div><!-- class="form-group"-->
                            
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="glyphicon glyphicon-lock"></i>
                                    </span>
                                    <input runat="server" type="password" class="form-control" placeholder="Password" id="txtPass" />
                                </div><!--/lass="input-group"-->
                                
                            </div><!-- /class="form-group"-->
                            
                            <div class="form-group">
                                <%--											    <input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in" id="btnSubmit" />--%>
                                <asp:Button ID="btnSubmit" runat="server" Text="SIGN IN" OnClick="btnSubmit_Click" CssClass="btn btn-lg btn-primary btn-block" />

                            </div><!-- /class="form-group"-->
                            
                        </div> <!-- /input container -->
                       
                    </div><!-- /column -->
                    

                    <div class="col-lg-2 col-md-2 col-sm-2 hidden-xs" style="border-style: solid; border-color: blue;"></div><!-- buffer col left-->
                    

                </div><!-- /row-->
                

                <asp:Label ID="lblOut" runat="server" Text="lblOut will be here" /><!-- for testing -->
                

                <!-- this also works using bootstap. not sure which style to use, need testing with a DB for function <asp:TextBox ID="txtLName" runat="server" CssClass="form-control">Last</asp:TextBox><!-- need on-click to clear text -->

                <%-- I can't believe I spent so muych time putting order parts in a login form. can you tell Im tired? <asp:TextBox ID="txtFName" runat="server">First</asp:TextBox> <!-- need on-click to clear text -->                     
                                                            <asp:TextBox ID="txtLName" runat="server">Last</asp:TextBox><!-- need on-click to clear text -->
                                                            <asp:TextBox ID="txtStreet1" runat="server">Street 1</asp:TextBox><!-- need on-click to clear text -->
                                                            <asp:TextBox ID="txtStreet2" runat="server">Street 2</asp:TextBox><!-- need on-click to clear text -->
                                                            <asp:TextBox ID="txtCity" runat="server">City</asp:TextBox><!-- need on-click to clear text -->
                                                            <asp:DropDownList ID="ddlState" runat="server"></asp:DropDownList> <!-- I think this would make validation easier than letting them input -->
                                                                    <!-- polulate the ddlState from database list or from code? -->
                                                            <asp:TextBox ID="txtZip" runat="server">Zip</asp:TextBox>
                                                            <asp:Button ID="btnSubmit" runat="server" Text="LOGON" />--%>
            </div><!--/container2-->
            

            <%--        <h1>something to check spacing here</h1>--%>
        </div><!--/main div -->
        
    </form>
</body>
</html>
