<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerTransactions.aspx.cs" Inherits="HOTELL.Operations.CustomerTransactions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <h3><%:Page.Title %></h3>
    <br />
    <div>
            <asp:Label ID="lbldanger" runat="server" CssClass="text-danger"></asp:Label><br />
            <asp:Label ID="lblsuccess" runat="server" CssClass="text-success"></asp:Label>
        </div>
                     <div class="row">
                         <div class="col-sm-8">
                         
                     
        <h3>Customer Transactions Setup</h3>
    

                          <div class="form-group">
                            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Room No</strong></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox runat="server" AutoPostBack="true" CssClass="form-control" ID="txtrno" MaxLength="7" OnTextChanged="txtrno_TextChanged"></asp:TextBox>

                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtrno" CssClass="text-danger" ErrorMessage="This field is required." />
                            </div>
                        </div>
                  <asp:UpdatePanel runat="server">
            <ContentTemplate> 
                        <div class="form-group">
                            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Guest Code</strong></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox runat="server" Enabled = "false" CssClass="form-control" ID="gscode" AutoPostBack="true"></asp:TextBox>

                                <asp:RequiredFieldValidator runat="server" ControlToValidate="gscode" CssClass="text-danger" ErrorMessage="This field is required." />
                            </div>
                        </div>

                               <div class="form-group">
                            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Guest Name</strong></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox runat="server" Enabled="false" CssClass="form-control" ID="txtname"></asp:TextBox>

                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtname" CssClass="text-danger" ErrorMessage="This field is required." />
                            </div>
                        </div>

                         <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Cost Center Desc</strong></asp:Label>
            <div class="col-md-8">
                <asp:DropDownList runat ="server" CssClass="form-control" ID="cmbcc" AutoPostBack ="true" OnSelectedIndexChanged="cmbcc_SelectedIndexChanged"></asp:DropDownList>
                
                <asp:RequiredFieldValidator runat="server" ControlToValidate="cmbcc" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>


                <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Product/Service Name</strong></asp:Label>
            <div class="col-md-8">
                <asp:DropDownList runat ="server" CssClass="form-control" ID="cmbps" AutoPostBack ="true" OnSelectedIndexChanged="cmbps_SelectedIndexChanged"></asp:DropDownList>
                
                <asp:RequiredFieldValidator runat="server" ControlToValidate="cmbps" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>


    
        
              <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Rate</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtrate" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtrate" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>

             <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Quantity</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtqty" runat="server" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtqty_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtqty" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>

                 <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Net Total</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtntotal" Enabled ="false" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtntotal" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>


                          <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong> Charge ?( YES / NO ) </strong></asp:Label>
           <div class="col-md-8">
                 <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                <asp:RadioButton runat ="server"  ID="txtyes" Text="Yes" AutoPostBack="true" OnCheckedChanged="txtyes_CheckedChanged"></asp:RadioButton>
                <asp:RadioButton runat ="server"  ID="txtno" Text="No" AutoPostBack="true" OnCheckedChanged="txtno_CheckedChanged"></asp:RadioButton>  
                  </ContentTemplate>
                    </asp:UpdatePanel> 
               </div></div>


        <div class="form-group">
            <asp:Label runat="server" ID="lblcd" Visible="false" CssClass="col-md-4 control-label"><strong>Charge Desc</strong></asp:Label>
            <div class="col-md-8">
                <asp:DropDownList runat ="server" Visible="false" CssClass="form-control" ID="cmbcd" AutoPostBack ="true" OnSelectedIndexChanged="cmbcd_SelectedIndexChanged">
                    <asp:ListItem Value="-1" Text="---Select Option---"></asp:ListItem>
                </asp:DropDownList>
               
                <asp:RequiredFieldValidator runat="server" ControlToValidate="cmbcd" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>

                      <div class="form-group" style="">
            <asp:Label runat="server" ID="lblcr" Visible="false" CssClass="col-md-4 control-label"><strong>Charge Rate</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtcr" runat="server" Enabled="false" Visible="false" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtcr" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>
   
               <div class="form-group" style="clear:both">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Gross Total</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtgtotal" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtgtotal" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>
                </ContentTemplate>
        </asp:UpdatePanel>


                           <div class="form-group">
                            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Transaction Date</strong></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox runat="server" CssClass="form-control" ID="txttransd"></asp:TextBox>

                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txttransd" CssClass="text-danger" ErrorMessage="This field is required." />
                            </div>
                        </div>

                <div class="form-group">
    <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Payment Mode</strong></asp:Label>
    <div class="col-md-8">
    <asp:DropDownList ID="cmbpm"  CssClass="form-control" runat="server" OnSelectedIndexChanged="cmbpm_SelectedIndexChanged">
        <asp:ListItem Enabled="true" Text="Select Option" Value="-1"></asp:ListItem>
        <asp:ListItem Enabled="true">CASH</asp:ListItem>
        <asp:ListItem Enabled="true">CREDIT</asp:ListItem>
    </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="cmbpm" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>

   <div class="form-group">
            <div class="col-md-offset-4 col-md-8">
                <asp:Button ID="submitButton" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="submitButton_Click" />
                <asp:Button ID="deleteButton" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="deleteButton_Click" />
            </div>
        </div>
            </div>
         <div class="col-sm-4">
               

             <asp:Image ID="Image1" runat="server" height="150px" Width="150px"/>
                   
            </div>
                 </div>
 <script src="../Scripts/jquery-ui-1.12.1.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("[id$=txttransd]").datepicker(
            {
                 
                dateFormat: 'd-m-yy'
            });

        //$(function () {
        //    $('#txttransd').datepicker({
        //        dateFormat: 'dd/mm/yy',
        //        onSelect: function (datetext) {
        //            var d = new Date();
        //            var h = d.getHours();
        //            h = (h < 10) ? ("0" + h) : h;

        //            var m = d.getMinutes();
        //            m = (m < 10) ? ("0" + m) : m;

        //            var s = d.getSeconds();
        //            s = (s < 10) ? ("0" + s) : s;
        //            datetext = datetext + " " + h + ":" + m + ":" + s;
        //            $('#txttransd').val(datetext);
        //        }
        //    });
        //});





        });
</script>

</asp:Content>
