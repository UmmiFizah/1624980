<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CO5027.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    UserName: 
    <asp:TextBox ID="txtRegUsername" runat="server"></asp:TextBox>
    <br />

    Password:
   <asp:TextBox ID="txtRegPassword" runat="server"></asp:TextBox>



    <br />
    <asp:Button ID="Reg" runat="server" Text="Register" />
    <br />



</asp:Content>
