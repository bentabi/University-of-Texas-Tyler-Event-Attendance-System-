<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Attendance.aspx.cs" Inherits="Attendance" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:80%; text-align:center;">

        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Font-Underline="True" 
            ForeColor="#71C400" Text="Attendance"></asp:Label>
        <br />
        <br />
        <br />

    <asp:Label ID="Label1" runat="server" Text="Student ID  :- "></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" Text="Scan" 
            Width="62px" />
        <br />
        <br />
        <br />

</div>
</asp:Content>