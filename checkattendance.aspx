<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="checkattendance.aspx.cs" Inherits="checkattendance" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:80%; text-align:center; " align="center">

        <br />
        <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Font-Underline="True" 
            ForeColor="#71C400" Text="Check Attendance"></asp:Label>

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
        <br />
        <table width="40%" align="center">
            <tr>
                <td width="50%" align="right">
                
        <asp:Label ID="Label4" runat="server" Text="Type  :-"></asp:Label>
                
                </td>
                <td width="50%" align="center">
                
        <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="90%">
            <asp:ListItem>Below</asp:ListItem>
            <asp:ListItem>Above</asp:ListItem>
        </asp:DropDownList>
                
                </td>
            </tr>

            <tr>
                <td width="50%" align="right">
                
                <asp:Label ID="Label1" runat="server" Text="Hours  :-"></asp:Label>        
                
                </td>
                <td width="50%" align="center">
                
                    <br />
                <asp:TextBox ID="TextBox1" runat="server" Width="90%"></asp:TextBox>
        
                    <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Invalid Hours " 
            ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
        
                </td>
            </tr>

             <tr>
                <td width="50%" align="right">
                
                    <br />
                <asp:Label ID="Label6" runat="server" Text="Class   :-"></asp:Label>        
                
                </td>
                <td width="50%" align="center">
                
                    <br />
        <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="90%">
            <asp:ListItem>Below</asp:ListItem>
            <asp:ListItem>Above</asp:ListItem>
        </asp:DropDownList>
                
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                
                    <br />
                    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Check" 
                        CssClass="intabular" Font-Bold="True" Height="40px" Width="100px" />
                
                </td>
            </tr>
        </table>
    <br />
    <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" 
            Width="70%">
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
            Text="Download" CssClass="intabular" Font-Bold="True" Height="40px" 
            Width="100px" />
        <br />
        <br />

</div>
</asp:Content>