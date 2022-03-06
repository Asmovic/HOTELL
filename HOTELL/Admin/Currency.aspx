<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Currency.aspx.cs" Inherits="HOTELL.Admin.Currency" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <h3><%:Page.Title %></h3>
    <br />
    <div>
            <asp:Label ID="lbldanger" runat="server" CssClass="text-danger"></asp:Label><br />
            <asp:Label ID="lblsuccess" runat="server" CssClass="text-success"></asp:Label>
        </div>
    <div runat="server" class="row">
        <div runat="server" class="col-md-6">
        <h4>Currency Rate Setup</h4>
  
    <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Currency Code</strong></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="TxtCode" runat="server" CssClass="form-control" MaxLength="5" OnTextChanged="TxtCode_TextChanged" AutoPostBack="true"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtCode" CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
             </div>                     
  
          
    <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-4 control-label"><strong>Currency Description</strong></asp:Label>
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

            </div>
        
              <div runat="server" class="col-md-6" style="height:450px; width:45%; overflow:auto">
                      <div style="height:250px; overflow:auto">
                  <asp:GridView runat="server" ID="gridview1" AutoGenerateSelectButton="true" 
                      style="position:absolute;" BackColor="#ffffcc" GridLines="Both" EditRowStyle-Font-Bold="true" FooterStyle-ForeColor="White"
                       OnSelectedIndexChanged="gridview1_SelectedIndexChanged"></asp:GridView>
                     </div>
                     </div>
    </div>

     <style>

                          table,th,td { width:97%; 
                border-collapse:collapse;
                border:3px solid black;

        }
         tr:nth-child(even) {
             background-color: white;
         }
         tr:nth-child(odd) {
             background-color: aliceblue;
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
