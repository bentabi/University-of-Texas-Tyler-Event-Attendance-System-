<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View_Events.aspx.cs" Inherits="View_Events" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div style="width:80%; text-align:center;margin-top:30px">
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="View Events" ForeColor="#71C400"></asp:Label>

            <asp:Panel ID="PanelGrid" runat="server" style="margin:30px">

               

                 <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
                    <FooterStyle BackColor="#926A41" ForeColor="Black" />
                    <HeaderStyle BackColor="#71C400" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>

            </asp:Panel>

        <br />
        <br />
</div>



</asp:Content>


