<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:80%; text-align:center;">

        <br />

        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="250px" 
            ImageUrl="~/images/Admin Btn.png" PostBackUrl="~/admin_login.aspx" 
            Width="250px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" Height="250px" 
            ImageUrl="~/images/Student Btn.png" PostBackUrl="~/user_login.aspx" 
            Width="250px" onclick="ImageButton2_Click" />
        <br />

</div>

</asp:Content>
