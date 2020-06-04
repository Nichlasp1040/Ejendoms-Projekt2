<%@ Page Title="" Language="C#" MasterPageFile="~/EjendomsProjektMaster.Master" AutoEventWireup="true" CodeBehind="NybrugerOgLogin.aspx.cs" Inherits="Ejendoms_Projekt2.NybrugerOgLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Login">
        <h2>Login</h2>
        <div class="Login-Box">
            <h3>Brugernavn</h3>
            <asp:TextBox ID="TextBoxLoginUsername" runat="server"></asp:TextBox>
        </div>
        <div class="Login-Box">
            <h3>Password</h3>
            <asp:TextBox ID="TextBoxLoginPassword" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="LabelLoginEror" runat="server"></asp:Label>
        <asp:Button Class="OpratLoginButton" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
    </div>
    <div class="Newuser">
        <h2>Oprat ny bruger</h2>
        <div class="Newuser-Box">
            <h3>Brugernavn</h3>
            <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
        </div>
        <div class="Newuser-Box">
            <h3>Password</h3>
            <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
        </div>
        <asp:Button Class="OpratLoginButton" ID="Button2" runat="server" Text="Oprat" OnClick="Button2_Click" />
    </div>

</asp:Content>
