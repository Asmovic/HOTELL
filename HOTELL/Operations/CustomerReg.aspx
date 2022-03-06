<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerReg.aspx.cs" Inherits="HOTELL.Operations.CustomerReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
    <h3><%:Page.Title %></h3>
    <br />
    <div>

            <asp:Label ID="lbldanger" runat="server" CssClass="text-danger"></asp:Label><br />
            <asp:Label ID="lblsuccess" runat="server" CssClass="text-success"></asp:Label>
        
        </div>
    <div class=" w3-animate-opacity">
    <h2 style="text-align:center; color:purple">Guest Registration</h2>
        </div>
        <%--<h4>Membership Registration</h4>--%>
    <div class="container  w3-animate-opacity  w3-card-12">
     <div class="row w3-round-large" style="background-image:url(/images/7.jpg); z-index:auto; opacity:initial;">
        <div class="col-xs-8">


                        <asp:UpdatePanel runat="server">
                    <ContentTemplate>
            <div class="col-md-offset-4 col-md-8">
               
                    
            <asp:CheckBox ID="Chk1" runat="server" Text=" NEW" TextAlign="Left" AutoPostBack="true" OnCheckedChanged="Chk1_CheckedChanged" />
               
       
            <asp:CheckBox ID="Chk2" runat="server" Text=" EXISTING" TextAlign="Left" AutoPostBack="true" OnCheckedChanged="Chk2_CheckedChanged" />
            

        </div>
           </ContentTemplate></asp:UpdatePanel>  

                                    <asp:UpdatePanel runat="server">
                    <ContentTemplate>
        <div class="form-group">
       <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Guest Code</strong></asp:Label>
        <div class="col-md-8">
                 <asp:TextBox runat="server" CssClass="form-control" ID="gscode" AutoPostBack="true" OnTextChanged="gscode_TextChanged"></asp:TextBox>

                     <asp:RequiredFieldValidator runat="server" ControlToValidate="gscode" CssClass="text-danger" ErrorMessage="This field is required." />
                         </div>
                     </div>
           </ContentTemplate></asp:UpdatePanel>


<div class="form-group">
        <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Room No</strong></asp:Label>
        <div class="col-md-8">
            <asp:TextBox runat="server" CssClass="form-control" AutoPostBack="true" ID="txtrno" MaxLength="7" OnTextChanged="txtrno_TextChanged"></asp:TextBox>

         <asp:RequiredFieldValidator runat="server" ControlToValidate="txtrno" CssClass="text-danger" ErrorMessage="This field is required." />
        </div>
    </div>


    <div class="form-group">
            <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Room Type</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtrtype" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtrtype" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>

        <div class="form-group">
            <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Rate</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtrate" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtrate" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>
           
                        <div class="form-group">
    <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Check in Date</strong></asp:Label>
    <div class="col-md-8">
        <asp:TextBox runat="server" CssClass="form-control" ID="txtchkid"></asp:TextBox>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtchkid" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>

  <div class="form-group">
    <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>No of Days</strong></asp:Label>
    <div class="col-md-8">
        <asp:TextBox runat="server" CssClass="form-control" AutoPostBack="true" ID="txtnod" OnTextChanged="txtnod_TextChanged"></asp:TextBox>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtnod" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>

  <div class="form-group">
    <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Check out Date</strong></asp:Label>
    <div class="col-md-8">
        <asp:TextBox runat="server" Enabled="false" CssClass="form-control" ID="txtchkod"></asp:TextBox>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtchkod" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>
                  <asp:UpdatePanel runat="server">
                    <ContentTemplate>
    <div class="form-group">
    <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Title</strong></asp:Label>
    <div class="col-md-8">
        <asp:DropDownList runat="server" Width="75%"  CssClass="form-control" ID="cmbtitle">
            <asp:ListItem Enabled="true" Text="Select Option" Value="-1"></asp:ListItem>
            <asp:ListItem Text="Mr" Value="Mr"></asp:ListItem>
            <asp:ListItem Text="Mrs" Value="Mrs"></asp:ListItem>
            <asp:ListItem Text="Lady" Value="Lady"></asp:ListItem>
            <asp:ListItem Text="Miss" Value="Miss"></asp:ListItem>
            <asp:ListItem Text="Chief" Value="Chief"></asp:ListItem>
            <asp:ListItem Text="Honourable" Value="Honourable"></asp:ListItem>
            <asp:ListItem Text="Dr" Value="Dr"></asp:ListItem>
            <asp:ListItem Text="Sir" Value="Sir"></asp:ListItem>
            <asp:ListItem Text="Judge" Value="Judge"></asp:ListItem>
            <asp:ListItem Text="Lord" Value="Lord"></asp:ListItem>
            <asp:ListItem Text="Captain" Value="Captain"></asp:ListItem>
            <asp:ListItem Text="Chancellor" Value="Chancellor"></asp:ListItem>
            <asp:ListItem Text="Colonel" Value="Colonel"></asp:ListItem>
            <asp:ListItem Text="Commander" Value="Commander"></asp:ListItem>
            <asp:ListItem Text="Engineer" Value="Engineer"></asp:ListItem>
            <asp:ListItem Text="H.E. Ambassador" Value="H.E. Ambassador"></asp:ListItem>
            <asp:ListItem Text="Her Excellency" Value="Her Excellency"></asp:ListItem>
            <asp:ListItem Text="His Excellency" Value="His Excellency"></asp:ListItem>
            <asp:ListItem Text="General" Value="General"></asp:ListItem>
            <asp:ListItem Text="H.M. King" Value="H.M. King"></asp:ListItem>
            <asp:ListItem Text="H.M. Queen" Value="H.M. Queen"></asp:ListItem>
            <asp:ListItem Text="H.R.H. Prince" Value="H.R.H. Prince"></asp:ListItem>
            <asp:ListItem Text="H.R.H. Princess" Value="H.R.H. Princess"></asp:ListItem>
            <asp:ListItem Text="President" Value="President"></asp:ListItem>
            <asp:ListItem Text="Minister" Value="Minister"></asp:ListItem>
            <asp:ListItem Text="Senator" Value="Senator"></asp:ListItem>
            <asp:ListItem Text="Professor" Value="Professor"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </div>
    </div>

    <div class="form-group">
    <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Surname</strong></asp:Label>
    <div class="col-md-8">
        <asp:TextBox runat="server" CssClass="form-control" ID="txtsurn" MaxLength="25"></asp:TextBox>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtsurn" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>
    <div class="form-group">
    <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Other Names</strong></asp:Label>
    <div class="col-md-8">
        <asp:TextBox runat="server" CssClass="form-control" ID="txton"></asp:TextBox>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="txton" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>



    <div class="form-group">
    <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Gender</strong></asp:Label>
    <div class="col-md-8">
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <asp:RadioButton runat="server" ID="txtmale" ForeColor="AliceBlue" Text="Male" AutoPostBack="true" OnCheckedChanged="txtmale_CheckedChanged"></asp:RadioButton>
                <asp:RadioButton runat="server" ID="txtfemale" Text="Female" ForeColor="AliceBlue" AutoPostBack="true" OnCheckedChanged="txtfemale_CheckedChanged"></asp:RadioButton>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </div>

  

    <div class="form-group">
    <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Date of Birth</strong></asp:Label>
    <div class="col-md-8">
        <asp:TextBox runat="server" CssClass="form-control" ID="txtdob"></asp:TextBox>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtdob" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>




    <div class="form-group">
    <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Telephone</strong></asp:Label>
    <div class="col-md-8">
        <asp:TextBox runat="server" CssClass="form-control" ID="txttell"></asp:TextBox>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="txttell" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>

    <div class="form-group">
    <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Email</strong></asp:Label>
    <div class="col-md-8">
        <asp:TextBox runat="server" CssClass="form-control" ID="txtemail"></asp:TextBox>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtemail" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>



    
            <div class="form-group">
        <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Bill</strong></asp:Label>
        <div class="col-md-8">
            <asp:TextBox runat="server" CssClass="form-control" ID="txtbill" AutoPostBack="true"  ></asp:TextBox>

         <asp:RequiredFieldValidator runat="server" ControlToValidate="txtbill" CssClass="text-danger" ErrorMessage="This field is required." />
        </div>
    </div>
                         <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                          <div class="form-group">
            <asp:Label runat="server" ForeColor="White"  CssClass="col-md-4 control-label"><strong>Any Deposit ?( YES / NO )</strong></asp:Label>
           <div class="col-md-8">
                 <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                <asp:RadioButton runat ="server"  ID="txtyes" Text="Yes" AutoPostBack="true" OnCheckedChanged="txtyes_CheckedChanged"></asp:RadioButton>
                <asp:RadioButton runat ="server"  ID="txtno" Text="No" AutoPostBack="true" OnCheckedChanged="txtno_CheckedChanged"></asp:RadioButton>  
                  </ContentTemplate>
                    </asp:UpdatePanel> 
               </div></div>

                      <div class="form-group" style="clear:both">
            <asp:Label runat="server" ID="lblamtd" ForeColor="White" Visible="false" CssClass="col-md-4 control-label"><strong>Amount Deposited:</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtamtd" runat="server" Visible="false" AutoPostBack="true" CssClass="form-control" OnTextChanged="txtamtd_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtamtd" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>
   
               <div class="form-group" style="clear:both">
            <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Balance</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtbalance" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtbalance" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>


                          </ContentTemplate>
                    </asp:UpdatePanel> 
            <div class="form-group">
    <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>Nationality</strong></asp:Label>
    <div class="col-md-8">
    <asp:DropDownList ID="cmbnat" Width="75%"   CssClass="form-control" runat="server">
        <asp:ListItem Enabled="true" Text="Select Option" Value="-1"></asp:ListItem>
        <asp:ListItem Enabled="true">NIGERIA</asp:ListItem>
        <asp:ListItem Enabled="true">SPAIN</asp:ListItem>
    </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="cmbnat" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>

    <div class="form-group">
    <asp:Label runat="server" ForeColor="White" CssClass="col-md-4 control-label"><strong>State of Origin</strong></asp:Label>
    <div class="col-md-8">
    <asp:DropDownList ID="cmbstate" Width="75%"   CssClass="form-control" runat="server">
        <asp:ListItem Enabled="true" Text="Select Option" Value="-1"></asp:ListItem>
        <asp:ListItem Enabled="true">LASGIDI</asp:ListItem>
        <asp:ListItem Enabled="true">PH</asp:ListItem>
    </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="cmbstate" CssClass="text-danger" ErrorMessage="This field is required." />
    </div>
    </div>

    <div class="panel-group">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title" >
                <a href="#collapse1"  data-toggle="collapse"><strong>Address</strong></a>
            </h4>
        </div>
        <div id="collapse1" class="panel-collapse collapse">
            <div class="panel-body">

                <div class="form-group">
                    <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Home Address</strong></asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txthadd"></asp:TextBox>

                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txthadd" CssClass="text-danger" ErrorMessage="This field is required." />
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Office Address</strong></asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtoadd"></asp:TextBox>

                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtoadd" CssClass="text-danger" ErrorMessage="This field is required." />
                    </div>
                </div>

                      
                </div>
            </div>
        </div>


    </div>


</ContentTemplate></asp:UpdatePanel>



</div>

                    


        <div class="col-xs-4">
            <br />
            <br />
            <br />
           
        <asp:Image ID="Image1" CssClass="thumbnail" runat="server" height="150px" Width="150px"/>
        <asp:fileupload BorderStyle="None" Width="60%" ID="fileupload" runat="server">
        </asp:fileupload>
        <asp:Button ID="preview" runat="server" OnClick="preview_Click" Text="Preview" />
             
          
    </div>
         

         
    
    
            <div class="form-group">
                <div class="col-md-offset-4 col-md-8">
                    <br />
         <br />
<%--                   <div class="btn btn-primary glyphicon glyphicon-search">
                       <asp:Button ID="test" runat="server" Text="search" BackColor="Transparent" BorderWidth="0" />

                   </div>--%>


                    <asp:Button ID="submitButton" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="submitButton_Click" />
                    <asp:Button ID="deleteButton" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="deleteButton_Click" />
                    <asp:Button ID="summary" runat="server" Text="Booking Summary" CssClass="btn btn-info" OnClick="summary_Click"  />
                </div>
            </div>
</div>
        </div>
   <%-- 
    <script>
        $('#dfa').datepicker();
    </script>
        --%>
    <%-- end of container --%>
                 <script src="../Scripts/jquery-ui-1.12.1.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("[id$=txtchkid]").datepicker(
            {
                dateFormat: 'd-m-yy'
            });
        $("[id$=txtdob]").datepicker(
    {
        dateFormat: 'd-m-yy'
    });




    });
</script>
</asp:Content>
