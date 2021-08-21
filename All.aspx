<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="All.aspx.cs" Inherits="All" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
    <div style="width:80%; text-align:center; " align="center">

        <br />
        <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Font-Underline="True" 
            ForeColor="#71C400" Text="View Attendance"></asp:Label>

        <br />
        <br />
        <br />

        <br />
        <table align="d">
        
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="From Date  :-"></asp:Label>    
            </td>
        
        <td>
            <asp:Calendar ID="Calendar1" runat="server">
        </asp:Calendar>
        </td>
        <td>
            
            &nbsp;&nbsp; &nbsp;</td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="To Date  :-"></asp:Label>
        </td>        
        <td>
            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
        </td>
        </tr>
        </table>
        
        <br />
        <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Check" />
    <br />
    <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" Width="288px">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Download" />
        <br />
        <br />

</div>
    
</div>
</asp:Content>