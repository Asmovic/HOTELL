<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReservationReport.aspx.cs" Inherits="HOTELL.Report.ReservationReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Reservation Report</h3>
    <div class="w3-container w3-animate-zoom w3-animate-fading">
        
         <asp:ListView ID="ListView2" runat="server" OnSelectedIndexChanged="ListView2_SelectedIndexChanged">
            <LayoutTemplate>
                <div style="height:300px; overflow:auto;">
                <table id="Tablez" runat="server" class="TableCss" rules="all" frame="box" style="text-align:center; width:70%; color:forestgreen; border-color:ButtonShadow; border-radius:10px" >
                    <tr id="Tr1" runat="server" class="TableHeader">
                        <th id="Th4" runat="server" ><strong>S_NO.</strong></th>
                         <th id="Th2" runat="server" ><strong>ROOM DESC.</strong></th>
                         <th id="Td1" runat="server" ><strong>ROOM NO</strong></th>
                        <th id="Th3" runat="server" ><strong>RESERVED DATE</strong></th>
                        <th id="Th1" runat="server" ><strong>DEPOSITED AMOUNT</strong></th>
                   
                    </tr>
                   <tr id="ItemPlaceholder" runat="server"></tr>
                    <tr id="Tr2" runat="server">
                       
                    </tr>
                </table>
                    </div>
            </LayoutTemplate>
            <ItemTemplate>
                <tr class="TableData" runat="server">
                        <td runat="server">
                        <asp:Label ID="Label3"  runat="server" Text='<%#Eval("S_No") %>'></asp:Label>
                    </td>       
                        <td runat="server">
                        <asp:Label ID="Label6"  runat="server" Text='<%#Eval("Type_Description") %>'></asp:Label>
                    </td>
       <td runat="server">
                        <asp:Label ID="Label1"  runat="server" Text='<%#Eval("Room_No") %>'></asp:Label>
                    </td>
                           <td runat="server">
                        <asp:Label ID="Label7"  runat="server" Text='<%#Eval("Reserved_Date") %>'></asp:Label>
                    </td>
                    <td runat="server">
                        <asp:Label ID="Label2"  runat="server" Text='<%#Eval("Deposit_Amount") %>'></asp:Label>
                    </td>
          
                                       
                </tr>
            </ItemTemplate>
       
        </asp:ListView>
    </div>

     <style>

                          table,th,td { width:30%;
                border-collapse:collapse;
                border:3px solid black;

        }
        tr:nth-child(even) { background-color:#F2F2F2;

        }
        
        th {
            background-color:#05c4ad;
            color:white;
            border-color:black;
        }

           td,th {
             text-align:center;
             padding:2px;
         }
         tr:hover{
             color:hotpink;
         }
                    </style>
</asp:Content>
