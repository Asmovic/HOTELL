<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RoomSearch.aspx.cs" Inherits="HOTELL.Operations.RoomSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <br />
             <div>
    <h3 style="float:left; clear:both;position:absolute"><asp:Label ID="lbl" runat="server"  CssClass="text-info"></asp:Label></h3>
  </div>
     <div class="form-group" style="clear:both">
            <asp:Label runat="server" ID ="lblrt" CssClass="col-md-4 control-label"><strong>Room Type</strong></asp:Label>
            <div class="col-md-8">
               <asp:DropDownList runat="server"  CssClass="form-control" ID="cmbrt" AutoPostBack="true" OnSelectedIndexChanged="cmbrt_SelectedIndexChanged">
                   <asp:ListItem Enabled="true" Text="Select Option" Value="-1"></asp:ListItem>
                                  
                   </asp:DropDownList>
                <br />
            </div>
             </div>
    <div class="row">
        <div class="col-md-6">
             <div class="form-group">
            <asp:Label runat="server" ID="lblstd" CssClass="col-md-4 control-label"><strong>Start Date</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat ="server"  AutoPostBack="true" OnTextChanged="txtstd_TextChanged" CssClass="form-control" ID="txtstd"></asp:TextBox>
                
                </div>
             </div>
            </div>
               <div class="col-md-6">
             <div class="form-group">
            <asp:Label runat="server" ID="lblendd" CssClass="col-md-4 control-label"><strong>End Date</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat ="server" AutoPostBack="true" OnTextChanged="txtendd_TextChanged" CssClass="form-control" ID="txtendd"></asp:TextBox>
                            
            </div>
             </div>
            </div>
        </div>
    <br />
       <asp:ListView ID="ListView1" runat="server"  OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <LayoutTemplate>

                <div style="height:500px; width:55%; overflow:auto; clear:both; position:inherit;">
                <table id="Table1" runat="server" class="TableCss" rules="all" frame="box" style="text-align:center; color:forestgreen; border-color:ButtonShadow; border-radius:10px" >
                    <tr id="Tr1" runat="server" class="TableHeader">
                        <th id="Td1" runat="server" ><strong>MEMBERSHIP NO</strong></th>
                        <th id="Td9" runat="server" ><strong>Surname</strong></th>
                        <th id="Td2" runat="server" ><strong>Other Names</strong></th>
                        <th id="Td3" runat="server" ><strong>Contribution Notch</strong></th>
                        <th id="Th1" runat="server" ><strong>Amount Contributed</strong></th>
                        <th id="Th2" runat="server" ><strong>Contribution Date</strong></th>
                        <th id="Th3" runat="server" ><strong>Payment Mode</strong></th>
                        <th id="Th4" runat="server" ><strong>Payment Ref No</strong></th>
                   
                         
                        
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
                        <asp:Label ID="Label1"  runat="server" Text='<%#Eval("MEMBERSHIP_NO") %>'></asp:Label>
                    </td>
                    <td runat="server">
                        <asp:Label ID="Label2"  runat="server" Text='<%#Eval("SURNAME") %>'></asp:Label>
                    </td>
                    <td runat="server">
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("OTHER_NAMES") %>'></asp:Label>
                    </td>
                    
                     <td runat="server">
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("CONT_NOTCH") %>'></asp:Label>
                    </td>

                         <td runat="server">
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("AMT_CONT") %>'></asp:Label>
                    </td>
                      <td runat="server">
                        <asp:Label ID="Label6" runat="server" Text='<%#Eval("CONT_DATE") %>'></asp:Label>
                    </td>

                    <td runat="server">
                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("PAY_MODE") %>'></asp:Label>
                    </td>

                    <td runat="server">
                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("PAY_REF") %>'></asp:Label>
                    </td>
                 
                                       
                </tr>
            </ItemTemplate>
        </asp:ListView>

        						<div class="container">
					<ul class="pager">
					<li class="previous" runat="server"><a href="/Operations/RoomSearch.aspx">Previous</a></li>
					<li class="next" runat="server"><a href="#">Next</a></li>
					</ul></div>

      <style>

                          table,th,td { width:50%;
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

         <script src="../Scripts/jquery-ui-1.12.1.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("[id$=txtstd]").datepicker(
            {
                dateFormat: 'dd/mm/yy'
            });
        $("[id$=txtendd]").datepicker({
            dateFormat: 'dd/mm/yy'
        });



    });
</script>
</asp:Content>
