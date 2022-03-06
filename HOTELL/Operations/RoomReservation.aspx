<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RoomReservation.aspx.cs" Inherits="HOTELL.Operations.RoomReservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      

    <h3><%:Page.Title %></h3>
    <br />
    <div>
            <asp:Label ID="lbldanger" runat="server" CssClass="text-danger"></asp:Label><br />
            <asp:Label ID="lblsuccess" runat="server" CssClass="text-success"></asp:Label>
        </div>
 
            
                      
        <h3>Room Reservation Setup</h3>

     <div class="row">
      <div class="col-md-7">

      

<div class="form-group">
        <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Room No</strong></asp:Label>
        <div class="col-md-8">
            <asp:TextBox runat="server" CssClass="form-control" AutoPostBack="true" ID="txtrno" MaxLength="7" OnTextChanged="txtrno_TextChanged"></asp:TextBox>

         <asp:RequiredFieldValidator runat="server" ControlToValidate="txtrno" CssClass="text-danger" ErrorMessage="This field is required." />
        </div>
    </div>


    <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Room Type</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtrtype" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtrtype" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>

     <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Rate</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtrate" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtrate" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>

        <div class="form-group">
    <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Reserved By</strong></asp:Label>
    <div class="col-md-8">
        <asp:TextBox runat="server" CssClass="form-control" ID="txtname" MaxLength="50"></asp:TextBox>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtname" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>

    <div class="form-group">
    <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Reserved Date</strong></asp:Label>
    <div class="col-md-8">
        <asp:TextBox runat="server" Enabled="false" CssClass="form-control" ID="txtrdate"></asp:TextBox>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtrdate" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>


    <div class="form-group">
    <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Telephone</strong></asp:Label>
    <div class="col-md-8">
        <asp:TextBox runat="server" CssClass="form-control" ID="txttell"></asp:TextBox>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="txttell" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>

    <div class="form-group">
    <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Email</strong></asp:Label>
    <div class="col-md-8">
        <asp:TextBox runat="server" CssClass="form-control" ID="txtemail"></asp:TextBox>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtemail" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>

            <div class="form-group">
    <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Commencement Date</strong></asp:Label>
    <div class="col-md-8">
        <asp:TextBox runat="server" Enabled="false" CssClass="form-control" ID="txtcomd"></asp:TextBox>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtcomd" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>
                                 <asp:UpdatePanel runat="server">
                    <ContentTemplate>
  <div class="form-group">
    <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>No of Days</strong></asp:Label>
    <div class="col-md-8">
        <asp:TextBox runat="server" Enabled="false" CssClass="form-control" AutoPostBack="true" ID="txtnod" OnTextChanged="txtnod_TextChanged"></asp:TextBox>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtnod" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>

  <div class="form-group">
    <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>End Date</strong></asp:Label>
    <div class="col-md-8">
        <asp:TextBox runat="server" Enabled="false" CssClass="form-control" ID="txtendd"></asp:TextBox>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtendd" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>


           <div class="container">
		
		<button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo">Click Here to view Bank Details!!!</button>
		<div id="demo"  style="width:45%; padding:5px; margin:7px;" class="collapse w3-round-medium w3-animate-zoom w3-card-8">
		              <h5 style="color:rosybrown"><strong>BANK NAME:</strong><span  style="color:teal; font-family:Andalus"> Diamond Bank</span></h5>
                   <h5 style="color:rosybrown"><strong>ACCOUNT NAME:</strong><span  style="color:teal; font-family:Andalus"> Living Spring Hotel int'l</span></h5>
                   <h5 style="color:rosybrown"><strong>ACCOUNT NUMBER:</strong><span  style="color:teal; font-family:Andalus">0048326826.</span></h5>
            <hr  style="margin:-3px;  color:PeachPuff"/>
            		              <h5 style="color:rosybrown"><strong>BANK NAME:</strong><span  style="color:teal; font-family:Andalus"> ZENITH Bank</span></h5>
                   <h5 style="color:rosybrown"><strong>ACCOUNT NAME:</strong><span  style="color:teal; font-family:Andalus"> Living Spring Hotel int'l</span></h5>
                   <h5 style="color:rosybrown"><strong>ACCOUNT NUMBER:</strong><span  style="color:teal; font-family:Andalus">0954378907.</span></h5>
           <hr  style="margin:-3px;color:PeachPuff"/>
            		              <h5 style="color:rosybrown"><strong>BANK NAME:</strong><span  style="color:teal; font-family:Andalus">UBA Bank</span></h5>
                   <h5 style="color:rosybrown"><strong>ACCOUNT NAME:</strong><span  style="color:teal; font-family:Andalus"> Living Spring Hotel int'l</span></h5>
                   <h5 style="color:rosybrown"><strong>ACCOUNT NUMBER:</strong><span  style="color:teal; font-family:Andalus">0064705437.</span></h5>
           
		</div>	
		</div>


                          </ContentTemplate>
                    </asp:UpdatePanel> 

                             <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                          <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-4 control-label"><strong> Deposited ?( YES / NO )</strong></asp:Label>
           <div class="col-md-8">
                 <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                <asp:RadioButton runat ="server"  ID="txtyes" Text="Yes" AutoPostBack="true" OnCheckedChanged="txtyes_CheckedChanged"></asp:RadioButton>
                <asp:RadioButton runat ="server"  ID="txtno" Text="No" AutoPostBack="true" OnCheckedChanged="txtno_CheckedChanged"></asp:RadioButton>  
                  </ContentTemplate>
                    </asp:UpdatePanel> 
               </div></div>


                      <div class="form-group">
            <asp:Label runat="server" ID="lblamtd" Visible="false" CssClass="col-md-4 control-label"><strong> Amount Deposited:</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtamtd" runat="server" Visible="false" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtamtd" CssClass="text-danger" ErrorMessage="This field is required." />
            
            
            </div>
             </div>


          <asp:label runat="server" Visible="false" style="color:forestgreen; clear:both" id="em">&nbsp;&nbsp;&nbsp;&nbsp;<strong> Send screen-shot of your P.O.P to this email:</strong><a class="tt">livingspringhotelng@gmail.com</a>. </asp:label>

                        
                  </ContentTemplate>
                    </asp:UpdatePanel> 
                <div class="form-group" style="clear:left;">
                           
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="TC" runat="server" /><span class="alert alert-link">
		<a data-toggle="modal" data-target="#myModal" class="tt alert-link">I have read and accepted the Terms and Conditions</a></span>
        <p style="color:red">&nbsp;&nbsp;&nbsp;&nbsp;Terms and Conditions must be accepted</p>
        
         <h4 style="color:black">Need Help&#10067;</h4>
                <p style="color:DarkSlateGray ;">We would be more than happy to help you. Our team are at your service 24/7.</p>
                <h4 style=" font-weight:400; color:darkred"><span style="color:darkred"> &#9742;&nbsp;&#43;</span>2348131924727</h4>

<div class="modal fade" id="myModal" role="dialog">
<div class="modal-dialog"><!--(You can add class="modal-dialog modal-sm) for small dialog also (You can add class="modal-dialog modal-lg) for large dialog-->
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal">&times;</button>
<h4 class="modal-title" style="color:goldenrod">TERMS AND CONDITIONS</h4></div>
<div class="modal-body"><p>Our check-in time is from 14h00 and our check-out time is by 11h00, unless prior arrangement has been made.</p>
    <p>GUARANTEE / PAYMENT POLICY:</p>
    <p>In order to guarantee your reservation, please make the payment of atleast 50% of your reservation Bills and send the screen-shot of your POP(Proof Of Payment)
        to this email:<a class="tt">livingspringhotelng@gmail.com</a>.<br />
        Reservations are required to be guaranteed within 12 hours of registration. Should we not receive payment within 12 hours, we reserve the right to cancel your 
        reservation. 
    </p>
      <p>CANCELLATION POLICY:</p>
    <p>Should your reservation be cancelled less than 24 hours of reservation, a cancellation fee of 50% of your deposit. 
    </p>
    <p>Should your reservation be cancelled after than 24 hours of reservation, a cancellation fee of 100% of your deposit. 
    </p>

    <p>NO-SHOW POLICY:</p>
    <p>A no-show is the non-arrival of a guest without notification in email to the hotel. In the case of a no-show, a no-show fee of one night's 
        accommodation will be levied against you in relation to your guaranteed method of payment. 
    </p>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal">close</button>
</div></div></div></div>


               </div>

          </div>

      <div class="col-md-5">
           <div style="height:350px; overflow:auto">
               <h3 style="color:coral; margin-left:40px;">Available Room(s)</h3>
                  <asp:GridView runat="server" ID="gridview2"  AutoGenerateSelectButton="true" 
                      style=" width:60%; left:830px; top:350px; " BackColor="#ffffcc"  GridLines="Both" EditRowStyle-Font-Bold="true" FooterStyle-ForeColor="White"
                       OnSelectedIndexChanged="gridview2_SelectedIndexChanged"></asp:GridView>
                     </div>
      </div>
  </div>


   <div class="form-group">
            <div class="col-md-offset-4 col-md-8">
                <asp:Button ID="submitButton" runat="server" Text="Book" CssClass="btn btn-success" OnClick="submitButton_Click" />
                <asp:Button ID="deleteButton" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="deleteButton_Click" />
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

         .tt:hover{
             cursor:pointer;
         }
                    </style>
                    <script src="../Scripts/jquery-ui-1.12.1.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("[id$=txtendd]").datepicker(
            {
                dateFormat: 'dd-mm-yy'
            });

        $("[id$=txtrdate]").datepicker(
{
    dateFormat: 'dd-MM-yy'
});
        $("[id$=txtcomd]").datepicker(
    {
        dateFormat: 'dd-mm-yy'
    });


     




    });
</script>

</asp:Content>
