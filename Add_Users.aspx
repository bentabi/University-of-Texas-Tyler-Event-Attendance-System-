<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Users.aspx.cs" Inherits="Add_Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

          <div style="width:80%; text-align:center;margin-top:30px">
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Add Users" ForeColor="#71C400"></asp:Label>




            <asp:Panel ID="PanelAdd" runat="server" style="margin:30px;">

                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtname" runat="server" Width="40%" Height="100%"   placeholder="Name"></asp:TextBox>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtadd" runat="server" Width="40%" Height="100%" TextMode="MultiLine" Rows="3"  placeholder="Address"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                             <asp:Label ID="Label6" runat="server" Text="Mobile"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtMob" runat="server" Width="40%" Height="100%" placeholder="Mobile.."></asp:TextBox>
                        </td>
                    </tr>

                     <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td  style="text-align:left">
                            <asp:TextBox ID="txtEmail" runat="server" Width="40%" Height="100%"  placeholder="Email.."></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="User Type"></asp:Label>
                        </td>
                        <td  style="text-align:left">
                            <asp:DropDownList ID="DDUserType" runat="server" Width="40%" Height="100%">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>HOD</asp:ListItem>
                                <asp:ListItem>SPONSORS</asp:ListItem>
                                <asp:ListItem>GUEST</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>

                      <tr>
                        <td colspan="2" style="text-align:center;"> 
                             <asp:Button ID="BtnAddUsers" runat="server" Text="Submit" OnClientClick="return validate()" OnClick="BtnAddUsers_Click"  style="background-color: #4CAF50;border: none;color: white;padding: 10px 15px;text-align: center;text-decoration: none;display: inline-block;font-size: 13px;margin-top:10px;" />
                        </td>
                    </tr>
                   
                </table>

            </asp:Panel>

        <br />
        <br />
</div>

        <style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
 
  text-align: right;
  padding: 8px;
}

</style>


<script type="text/javascript">

    function validate() {

        if (document.getElementById('<%= txtname.ClientID %>').value != "")
        {
            if (document.getElementById('<%= txtadd.ClientID %>').value != "")
            {
                if (document.getElementById('<%= txtMob.ClientID %>').value != "")
                {
                    if (document.getElementById('<%= txtEmail.ClientID %>').value != "")
                    {
                        if (document.getElementById('<%= DDUserType.ClientID %>').value != "Select")
                        {
                            return true;
                        }
                        else
                        {
                            alert("Kindly Enter UserType.");
                            return false;
                        }
                    }
                    else
                    {
                        alert("Kindly Enter Email.");
                        return false;
                    }
                }
                else
                {
                    alert("Kindly Enter Mobile.");
                    return false;
                }
            }
            else
            {
                alert("Kindly Enter Address.");
                return false;
            }
        }
        else
        {
            alert("Kindly Enter Name.");
            return false;
        }
        
    }


</script>

  


</asp:Content>

