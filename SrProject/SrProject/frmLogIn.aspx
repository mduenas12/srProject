<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogIn.aspx.cs" Inherits="SrProject.frmLogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>LOGON</title>

        <!-- these are necessary INCLUDES for Bootstrap CSS, JavaScript, and jquery -->
            <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script> <!-- needed for js like dropdowns -->
            <script src="js/bootstrap.min.js"></script>
            <link href="css/bootstrap.css" rel="stylesheet" />
            <link href="css/CustomStyles.css" rel="stylesheet" />
        <!-- ---------------------------------------------------------------------- -->



</head>
<body style="height: 628px">
    <form id="form1" runat="server">
    <div><!--main div -->
        
        <div class="container-fluid"> <!-- ISSUE  = this navbar is overwriting the controls below, because they are positioned at the top as well, not below this container
                                              fixed by changing from "navbar-fixed-top" to "navbar-static-top" -->
                <nav class="navbar navbar-default navbar-static-top" role="navigation"></nav><!-- /navbar (will be stuck at top of screen, won't come down when scrolling)-->
         </div> <!-- /container-fluid -->
       
            <div class="container">
                   

                    
                        <div class="row"><!-- code snippet inspired by https://blogs.msdn.microsoft.com/cdndevs/2015/04/29/evolving-asp-net-appsapplication-style-and-layout/ -->
									 <div class="col-sm-12 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2">   
                                        <div class="col-sm-12 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2">
										    <div class="form-group">
											    <div class="input-group">
												    <span class="input-group-addon">
													    <i class="glyphicon glyphicon-user"></i>
												    </span> 
												    <input runat="server" type="text" class="form-control" placeholder="Username" id="txtUser" />
											    </div><!--/class="input-group"-->
										    </div><!-- class="form-group"-->
										    <div class="form-group">
											    <div class="input-group">
												    <span class="input-group-addon">
													    <i class="glyphicon glyphicon-lock"></i>
												    </span>
												    <input runat="server" type="text" class="form-control" placeholder="Password" id="txtPass" />
											    </div><!--/lass="input-group"-->
										    </div><!-- /class="form-group"-->
										    <div class="form-group">
<%--											    <input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in" id="btnSubmit" />--%>
                                                    <asp:Button ID="btnSubmit" runat="server" Text="SIGN IN" OnClick="btnSubmit_Click" CssClass="btn btn-lg btn-primary btn-block" />

										    </div><!-- /class="form-group"-->
									    </div><!-- /col sizes -->
                                     </div>
						</div>
                       
                        <%--<asp:Button ID="btnSubmit" runat="server" Text="LOGON" OnClick="btnSubmit_Click" CssClass="btn btn-lg btn-primary btn-block" />--%>
                        <asp:Label ID="lblOut" runat="server" Text="lblOut will be here" />
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

                    </div><!-- /row -->
            </div><!--/container-->

        <h1>something to check spacing here</h1>


                    

    </div><!--/main div -->
    </form>
</body>
</html>
