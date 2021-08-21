<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="emp_attendview.aspx.cs" Inherits="emp_attendview" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="body" runat="server">
    <div style="width:80%; text-align:center;">
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Font-Underline="True" 
            ForeColor="#71C400" Text="Attendance"></asp:Label>
        <br />
        <br />
        <br />
    <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Search" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center">
    </asp:GridView>
</div>
</asp:Content>