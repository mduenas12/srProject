<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmManagerHome.aspx.cs" Inherits="SrProject.Home" %>

<%@ Register src="ctrlModifyEmployees.ascx" tagname="ctrlModifyEmployees" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        This uses an update panel to do partial page postbacks.<br />
        Only the updatepanel refreshes, the rest of the page stays displayed.
        <br />
        Variables are saved in viewstate. For more imporatant things, we&#39;ll use session vars instead.<br />
        Objects in here are just for testing the functionality of the update panel.
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="50000" OnTick="Timer1_Tick">
        </asp:Timer>
        <br />
        <asp:Button ID="btnupdate" runat="server" Text="Button" OnClick="btnupdate_Click" />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="lblAjax" runat="server" Text=""></asp:Label>

                <br />
                <uc1:ctrlModifyEmployees ID="ctrlModifyEmployees1" runat="server" />
                <br />
                
               
                
                
               
                <br />
               
                <asp:Label ID="lblRefreshTime" runat="server"></asp:Label>
                <br />
                <br />
                <br />

            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnupdate" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
