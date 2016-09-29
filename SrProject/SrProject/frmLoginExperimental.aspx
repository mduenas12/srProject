<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLoginExperimental.aspx.cs" Inherits="SrProject.frmLoginExperimental" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>LOGIN</title>

    <!-- these are necessary INCLUDES for Bootstrap CSS, JavaScript, and jquery -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
    <!-- needed for js like dropdowns -->
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/CustomStyles.css" rel="stylesheet" />
    <!-- ---------------------------------------------------------------------- -->



</head>
<body>
    <form id="form1" runat="server">
        <div>
        
            <!--main div -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation">                
                <a class="navbar-brand" href="#">
                    <img alt="Brand" src="..."/>
                </a>
            </nav>

            <%--<div class="container-fluid">
                <!-- ISSUE  = this navbar is overwriting the controls below, because they are positioned at the top as well, not below this container
                                              fixed by changing from "navbar-fixed-top" to "navbar-static-top" -->

                <!-- /navbar (will be stuck at top of screen, won't come down when scrolling)-->
            </div>--%>
            <!-- /container-fluid -->

            <div class="container-fluid" style="/*border-style: solid;*/ /*border-color: red;*/ margin-top: 20px; position: fixed; top: 50%; left: 50%; width: 100%; transform: translate(-50%,-50%);">

                <div class="row">
                    <!--  background-color: #eee -->
                    <!-- code snippet inspired by https://blogs.msdn.microsoft.com/cdndevs/2015/04/29/evolving-asp-net-appsapplication-style-and-layout/ -->


                    <%--<div class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4" style="border-style: solid; border-color: blue;">--%>
                    <div class="col-lg-3 col-md-2 col-sm-2 hidden-xs" style="/*border-style: solid;*/ /*border-color: blue;*/ min-height: 50px;"></div>
                    <!-- buffer col left-->


                    <div class="col-lg-6 col-md-8 col-sm-8 form-login">
                        <div class="col-lg-4 col-md-4 col-sm-4 hidden-xs background-bokke" style="/*border-style: solid;*/ /*border-color: blue;*/ min-height: 300px;"></div>
                        <!-- for picture on left-->

                        <div class="col-lg-8 col-md-8 col-sm-8" style="/*border-style: solid; border-color: orchid;*/ min-height: 300px;">

                            <div class="vertical-center" style="width: 100%; border-style: solid; border-color: orchid;">

                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="glyphicon glyphicon-user"></i>
                                        </span>
                                        <input runat="server" type="text" class="form-control" placeholder="Username" id="txtUser" />
                                        <%--<asp:RequiredFieldValidator ID="txtUserValidate" CssClass="text-danger" runat="server" ErrorMessage="Please enter user name." ControlToValidate="txtUser"></asp:RequiredFieldValidator> --%>
                                    </div>
                                    <!--/class="input-group"-->

                                </div>
                                <!-- class="form-group"-->

                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="glyphicon glyphicon-lock"></i>
                                        </span>
                                        <input runat="server" type="password" class="form-control" placeholder="Password" id="txtPass" />
                                    </div>
                                    <!--/lass="input-group"-->

                                </div>
                                <!-- /class="form-group"-->

             <!-- THE BUTTON WAS HERE -->                   
                                <div class="form-group" >
                                    <%--											    <input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in" id="btnSubmit" />--%>
                                    <asp:Button ID="btnSubmit" runat="server" Text="SIGN IN" OnClick="btnSubmit_Click" CssClass="btn btn-lg btn-primary btn-block" />

                                </div>
                                <!-- /class="form-group"-->

                            </div>
                            <!-- /input container -->

                        </div>
                        <!-- /main login col -->
                    </div>
                    <!--/8-wide login col-->

                    <div class="col-lg-3 col-md-2 col-sm-2 hidden-xs" style="/*border-style: solid;*/ /*border-color: blue;*/ min-height: 50px;"></div>
                    <!-- buffer col left-->               

                </div>
                <!-- /row-->

                <asp:Label ID="lblOut" runat="server" Text="lblOut will be here" /><!-- for testing -->

            </div>
            <!--/container2-->        
            
        </div>
        <!--/main div -->

    </form>
</body>
</html>
