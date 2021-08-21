<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view_emp.aspx.cs" Inherits="view_emp" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:80%; text-align:center;">
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="View Student" ForeColor="#71C400"></asp:Label>
        <br />
        <br />
        <br />
    <asp:Label ID="Label1" runat="server" Text="Student  ID  :-"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
    <br />
        <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="80%">
        <FooterStyle BackColor="#926A41" ForeColor="Black" />
        <HeaderStyle BackColor="#71C400" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
        <br />
        <br />
</div>

</asp:Content>