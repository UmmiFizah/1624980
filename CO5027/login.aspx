<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CO5027.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Index.css" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">

        <div id="loginform">
        <div class="loginform">
            Log in  
            <p>
               
                Username:
            <br />
                <asp:TextBox ID="txtEmail1" runat="server"></asp:TextBox>
            <br />
            Password:<br />
            <asp:TextBox ID="txtpassword1" runat="server"></asp:TextBox>
                
                </p>
            <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
            <asp:Literal ID="Literallogin" runat="server"></asp:Literal>
        </div>



        </div>


    <div id="registerform">
        <div class="registerform">
            Register
            <p>
                Email:
                </p>
               
            <asp:TextBox ID="TxtEmail2" runat="server"></asp:TextBox>
         
                <br />
         
            Username:
            <p>
                <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox>
            </p>
            Password:
            <p>
                
                <asp:TextBox ID="txtpassword2" runat="server"></asp:TextBox>
                
            </p>
                Confirm Password:
                <p>
               <asp:TextBox ID="TxtConfirmPassword" runat="server"></asp:TextBox>
                </p>

                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                <asp:Literal ID="LiteralRegister" runat="server"></asp:Literal>
          </div>
    
    </div>
    </form>
</body>
</html>
