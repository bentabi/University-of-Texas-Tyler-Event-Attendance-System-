<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mng_events.aspx.cs" Inherits="mng_events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div style="width:80%; text-align:center;margin-top:30px">
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Manage Events" ForeColor="#71C400"></asp:Label>

    
        

            <asp:Panel ID="PanelGrid" runat="server" style="margin:30px">

                <div style="text-align: right;margin:30px">
            <input id="btnAdd" type="button" value="ADD EVENT" onclick="ViewAdd()" style="background-color: #4CAF50;border: none;color: white;padding: 10px 20px;text-align: center;text-decoration: none;display: inline-block;font-size: 13px;" />

        </div> 


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


            <asp:Panel ID="PanelAdd" runat="server" style="margin:30px;display:none">

                 <div style="text-align: right;margin:30px">
            <input id="btnView" type="button" value="VIEW EVENTS" onclick="ViewGrid()" style="background-color: #4CAF50;border: none;color: white;padding: 10px 15px;text-align: center;text-decoration: none;display: inline-block;font-size: 13px;" />

        </div> 



                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Event Name"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtentname" runat="server" Width="40%" Height="100%"   placeholder="Event Name"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           <asp:Label ID="Label1" runat="server" Text="StartDate"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtstrdte" runat="server" Width="40%" Height="100%" type="date"  placeholder="Event StartDate"></asp:TextBox>
                        </td>
                    </tr>

                     <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Enddate"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtenddte" runat="server" Width="40%" Height="100%" type="date"   placeholder="Event Enddate"></asp:TextBox>
                        </td>
                    </tr>

                      <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Description"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtdesc" runat="server" Width="40%" Height="100%" TextMode="MultiLine" Rows="3"  placeholder="Event Description"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                             <asp:Label ID="Label6" runat="server" Text="Location"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtloc" runat="server" Width="40%" Height="100%" placeholder="Event Location.."></asp:TextBox>
                        </td>
                    </tr>

                     <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Contact"></asp:Label>
                        </td>
                        <td  style="text-align:left">
                            <asp:TextBox ID="txtcon" runat="server" Width="40%" Height="100%"  placeholder="Event Contact.."></asp:TextBox>
                        </td>
                    </tr>

                      <tr>
                        <td colspan="2" style="text-align:center;"> 
                             <asp:Button ID="BtnAddEvents" runat="server" Text="Submit" OnClientClick="return validate()" OnClick="BtnAddEvents_Click"  style="background-color: #4CAF50;border: none;color: white;padding: 10px 15px;text-align: center;text-decoration: none;display: inline-block;font-size: 13px;margin-top:10px;" />
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

        var date1 = new Date(document.getElementById('<%= txtstrdte.ClientID %>').value);
        var date2 = new Date(document.getElementById('<%= txtenddte.ClientID %>').value);

        if (document.getElementById('<%= txtentname.ClientID %>').value != "")
        {
            if (document.getElementById('<%= txtstrdte.ClientID %>').value != "")
            {
                if (document.getElementById('<%= txtenddte.ClientID %>').value != "")
                {
                    if (document.getElementById('<%= txtdesc.ClientID %>').value != "")
                    {
                        if (document.getElementById('<%= txtloc.ClientID %>').value != "")
                        {
                            if (document.getElementById('<%= txtcon.ClientID %>').value != "")
                            {
                                if (date2 >= date1)
                                {
                                    return true;
                                }
                                else
                                {
                                    alert("End date Should be greater the startdate.");
                                    return false;
                                }
                            }
                            else {
                                alert("Kindly Enter Contact.");
                                return false;
                            }
                        }
                        else
                        {
                            alert("Kindly Enter Location.");
                            return false;
                        }
                    }
                    else
                    {
                        alert("Kindly Enter Desc.");
                        return false;
                    }
                }
                else
                {
                    alert("Kindly Enter End Date.");
                    return false;
                }
            }
            else
            {
                alert("Kindly Enter Start Date.");
                return false;
            }
        }
        else
        {
            alert("Kindly Enter Event Name.");
            return false;
        }
        
    }


    function ViewGrid() {
        document.getElementById('<%= PanelAdd.ClientID %>').style.display = "none";
        document.getElementById('<%= PanelGrid.ClientID %>').style.display = "block";
    }

    function ViewAdd() {
        document.getElementById('<%= PanelAdd.ClientID %>').style.display = "block";
        document.getElementById('<%= PanelGrid.ClientID %>').style.display = "none";

    }

</script>



</asp:Content>

