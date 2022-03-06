<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HistorySearch.aspx.cs" Inherits="HOTELL.Operations.HistorySearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <br />
             <div>
    <h3 style="float:left; clear:both;position:absolute"><asp:Label ID="lbl" runat="server"  CssClass="text-info"></asp:Label></h3>
  </div>
    <div class="row">
        <div class="col-md-10">
        <div class="form-group">
            <br />
            <br />

            <asp:Label runat="server" ID="lblcy" CssClass="col-md-4 control-label"><strong>Room No</strong></asp:Label>
            <div class="col-md-8">
               <asp:TextBox runat ="server" ID="txtroomno" AutoPostBack="true" OnTextChanged="txtroomno_TextChanged" CssClass="form-control"></asp:TextBox>
                
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtroomno" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>


                <div class="container">

<button type="button" style="margin-left:400px" class="btn btn-success btn-lg glyphicon glyphicon-search"  data-toggle="modal" data-target="#myModal">Search</button>

<div class="modal fade" id="myModal" role="dialog">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal">&times;</button>
 
<h3 class="modal-title"><strong> GUEST HISTORY</strong> &nbsp;&nbsp;&nbsp;&nbsp; Check-out Date:&nbsp<asp:label runat="server" id="lblrd" ForeColor="MediumTurquoise"> </asp:label> </h3>
   
      
    <div class="row">
        <div class="col-md-7">
    <h4><strong>Room No:&nbsp</strong><asp:label runat="server" id="lblrn" CssClass="text-success"></asp:label></h4>
    <h4><strong>Name:&nbsp</strong><asp:label runat="server" id="lblname" CssClass="text-success"></asp:label></h4>
     <h4><strong>Check in Date:&nbsp</strong><asp:label runat="server" id="lblcid" ForeColor="CornflowerBlue"> </asp:label></h4>
         </div>
        <div class="col-md-5" style="float:right">
           
            <asp:Image ID="Image2" CssClass="img-thumbnail" runat="server" height="150px" Width="150px"/>
            </div>
    </div>
         
     

</div>
<div class="modal-body">
     <asp:ListView ID="ListView2" runat="server" OnSelectedIndexChanged="ListView2_SelectedIndexChanged">
            <LayoutTemplate>
                <div style="height:300px; overflow:auto;">
                <table id="Tablez" runat="server" class="TableCss" rules="all" frame="box" style="text-align:center; width:70%; color:forestgreen; border-color:ButtonShadow; border-radius:10px" >
                    <tr id="Tr1" runat="server" class="TableHeader">
                         <th id="Th2" runat="server" ><strong>S_No</strong></th>
                         <th id="Td1" runat="server" ><strong>TRANSACTION DATE</strong></th>
                        <th id="Th3" runat="server" ><strong>TRANSACTION TIME</strong></th>
                        <th id="Td9" runat="server" ><strong>COST CENTER DESC.</strong></th>
                        <th id="Th1" runat="server" ><strong>PROD/SERV DESC.</strong></th>
                        <th id="Td2" runat="server" ><strong>DEBIT</strong></th>
                        <th id="Td3" runat="server" ><strong>CREDIT</strong></th>
                        <th id="Th4" runat="server" ><strong>BALANCE</strong></th>
                   
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
                        <asp:Label ID="Label6"  runat="server" Text='<%#Eval("S_No") %>'></asp:Label>
                    </td>
       <td runat="server">
                        <asp:Label ID="Label1"  runat="server" Text='<%#Eval("Trans_Date") %>'></asp:Label>
                    </td>
                           <td runat="server">
                        <asp:Label ID="Label7"  runat="server" Text='<%#Eval("Trans_Time") %>'></asp:Label>
                    </td>
                      <td runat="server">
                        <asp:Label ID="Label4"  runat="server" Text='<%#Eval("Cost_Center_Desc") %>'></asp:Label>
                    </td>
                    <td runat="server">
                        <asp:Label ID="Label2"  runat="server" Text='<%#Eval("Prod_Serv_Desc") %>'></asp:Label>
                    </td>
                    <td runat="server">
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Debit") %>'></asp:Label>
                    </td>
                    
                     <td runat="server">
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("Credit") %>'></asp:Label>
                    </td>
                    <td runat="server">
                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("Balance") %>'></asp:Label>
                    </td>

      
                   
                 
                                       
                </tr>
            </ItemTemplate>
       
        </asp:ListView>
    </div>
<div class="modal-footer">
 <h4 style="float:left"> <asp:Label runat="server" ID="total" CssClass="text-danger"></asp:Label></h4>
<button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
    <asp:Button ID="CheckOut" runat="server" Text="Check Out" CssClass="btn btn-danger" OnClick="CheckOut_Click" />
</div></div></div></div></div>

        
           <%-- <div class="form-group">
            <div style="text-align:center">
                <asp:Button ID="submitButton" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="submitButton_Click" />
                <asp:Button ID="deleteButton" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="deleteButton_Click" />
            </div>
                 </div>--%>

        </div>
            
        <div class="col-sm-2">
               <br /><br />

             <asp:Image ID="Image1" Visible="false" CssClass="img-thumbnail" runat="server" height="150px" Width="150px"/>
                   
            </div>
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

         <script src="../Scripts/jquery-ui-1.12.1.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("[id$=txtstd]").datepicker(
            {
                dateFormat: 'dd-mm-yy'
            });
        $("[id$=txtendd]").datepicker({
            dateFormat: 'dd-mm-yy'
        });



    });
</script>
</asp:Content>
