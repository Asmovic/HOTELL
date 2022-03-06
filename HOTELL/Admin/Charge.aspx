<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Charge.aspx.cs" Inherits="HOTELL.Admin.Charge" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h3><%:Page.Title %></h3>
    <br />
    <div>
            <asp:Label ID="lbldanger" runat="server" CssClass="text-danger"></asp:Label><br />
            <asp:Label ID="lblsuccess" runat="server" CssClass="text-success"></asp:Label>
        </div>
        <h4>Room Charge Setup</h4>
  
    <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Charge Code</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="TxtCode" runat="server" CssClass="form-control" MaxLength="5" OnTextChanged="TxtCode_TextChanged" AutoPostBack="true"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtCode" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>                     
  
          
    <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Charge Description</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="TxtName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtName" CssClass="text-danger" ErrorMessage="This field is required." />
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
            <div class="col-md-offset-4 col-md-8">
                <asp:Button ID="submitButton" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="submitButton_Click" />
                <asp:Button ID="deleteButton" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="deleteButton_Click" />
                 <asp:Button ID="report" runat="server" Text="Generate Report" CssClass="btn btn-info" OnClick="report_Click" />
            </div>
                 </div>

</asp:Content>
