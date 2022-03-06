<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Room.aspx.cs" Inherits="HOTELL.Admin.Room" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <h3><%:Page.Title %></h3>
    <br />
    <div>
            <asp:Label ID="lbldanger" runat="server" CssClass="text-danger"></asp:Label><br />
            <asp:Label ID="lblsuccess" runat="server" CssClass="text-success"></asp:Label>
        </div>
        <h4>Room Setup</h4>
  
    <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Room No</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtrno" runat="server" CssClass="form-control" OnTextChanged="txtrno_TextChanged" AutoPostBack="true"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtrno" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>                     
  
          
    <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Room Description</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtrdesc" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtrdesc" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>

         <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Room Type</strong></asp:Label>
            <div class="col-md-8">
               
                <asp:DropDownList runat ="server" CssClass="form-control" ID="cmbrt"  AutoPostBack ="true" OnSelectedIndexChanged="cmbrt_SelectedIndexChanged"></asp:DropDownList>
                
                <asp:RequiredFieldValidator runat="server" ControlToValidate="cmbrt" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>


        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Rate</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtrate" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtrate" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>

                <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-4 control-label"><strong>Room Status</strong></asp:Label>
            <div class="col-md-8">
               <asp:DropDownList runat="server" CssClass="form-control" OnSelectedIndexChanged="cmbrs_SelectedIndexChanged" ID="cmbrs" AutoPostBack="true">
                   <asp:ListItem Enabled="true" Text="Select Option" Value="-1"></asp:ListItem>
                   <asp:ListItem Text="OCCUPIED" Value="O"></asp:ListItem>
                   <asp:ListItem Text="BOOKED" Value="B"></asp:ListItem>
                   <asp:ListItem Text="VACANT" Value="V"></asp:ListItem>
                                     
               </asp:DropDownList>
                <br />
            </div>
             </div>

    

    <div class="form-group">
            <div class="col-md-offset-4 col-md-8">
                <asp:Button ID="submitButton" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="submitButton_Click" />
                <asp:Button ID="deleteButton" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="deleteButton_Click" />
                 <asp:Button ID="report" runat="server" Text="Generate Report" CssClass="btn btn-info" OnClick="report_Click" />
            </div>
                 </div>

</asp:Content>
