<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckUsers.aspx.cs" Inherits="CheckUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="width:80%; text-align:center;">

        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Font-Underline="True" 
            ForeColor="#71C400" Text="Users Details"></asp:Label>
        <br />
        <br />
        <br />

    <asp:Label ID="Label1" runat="server" Text=" ID  :- "></asp:Label>
&nbsp;
    <asp:TextBox ID="txtScanId" runat="server"></asp:TextBox>
    <br />
        <br />
        <asp:Button ID="btnScan" runat="server" OnClientClick="return validate()" onclick="btnScan_Click" Text="Submit"  style="background-color: #4CAF50;border: none;color: white;padding: 10px 10px;text-align: center;text-decoration: none;display: inline-block;font-size: 13px;margin-top:10px;" Width="62px" />
        <br />
        <br />
        <br />

</div>
    <div>

              <asp:Panel ID="PanelDetails" runat="server" style="margin:30px;" Visible="false">

                <table>
                    <tr >
                        <td >
                            <asp:Label ID="Label5" runat="server" Text="Name :"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtname" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Address : "></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" Rows="4" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                             <asp:Label ID="Label6" runat="server" Text="Mobile : "></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtMob" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                     <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Email  : "></asp:Label>
                        </td>
                        <td  style="text-align:left">
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="User Type :"></asp:Label>
                        </td>
                        <td  style="text-align:left">
                           <asp:TextBox ID="txtUserType" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                   
                </table>

            </asp:Panel>

        <br />
        <br />
        </div>

    <script type="text/javascript">
        function validate() {

            if (document.getElementById('<%= txtScanId.ClientID %>').value != "")
            {
                return true;
            }
            else
            {
                alert("Kindly Enter Id");
                return false;
            }
        }

    </script>



</asp:Content>

