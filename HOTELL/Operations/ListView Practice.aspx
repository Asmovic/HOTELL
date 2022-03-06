<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListView Practice.aspx.cs" Inherits="HOTELL.Operations.ListView_Practice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<h3>Data Manipulation, Sorting, Paging using ListView Control</h3>
        <hr />
<asp:Label ID="lblMessage" runat="server" EnableViewState="false" ForeColor="Blue"></asp:Label>
<asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="placeHolder1" OnItemEditing="EditListViewItem" OnItemCanceling="CancelListViewItem"
     OnItemUpdating="UpdateListViewItem" DataKeyNames="AutoId" OnPagePropertiesChanging="PagePropertiesChanging" OnItemInserting="InsertListViewItem"
     InsertItemPosition="LastItem" OnItemDeleting="DeleteListViewItem" OnSorting="SortListViewRecords">

    <LayoutTemplate>
        <table style="width:100%; padding:4px;  border-spacing:0">
            <tr class="header">
                <th style="width:30%;">
                    <asp:LinkButton ID="lnkSort1" runat="server" CommandName="Sort" CommandArgument="Name" Text="Name"></asp:LinkButton>
                </th>
                <th style="width:50%;">
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sort" CommandArgument="Address" Text="Address"></asp:LinkButton>
                </th>
                <th style="width:20px;">
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Sort" CommandArgument="Phone" Text="Phone"></asp:LinkButton>
                </th>
                <th>
                    Modify
                </th>
            </tr>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </table>

      </LayoutTemplate>
    <ItemTemplate>
        <tr class="item">
            <td>
                <%#Eval("Name") %>
            </td>
            <td>
                <%#Eval("Address") %>
            </td>
            <td>
                <%#Eval("Phone") %>
            </td>
            <td>
                <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" CommandName="Edit"></asp:LinkButton>
                <span onclick="return confirm('Are you sure to delete?')">
                    <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" CommandName="Delete" ForeColor="Brown"></asp:LinkButton>
                </span>
            </td>
        </tr>
    </ItemTemplate>
    <AlternatingItemTemplate>
        <tr>
            <td>
                <%# Eval("Name") %>
            </td>
            <td>
                <%# Eval("Address") %>
            </td>
            <td>
            <%# Eval("Phone") %>
            </td>
             <td>
                <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" CommandName="Edit"></asp:LinkButton>
                <span onclick="return confirm('Are you sure to delete?')">
                    <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" CommandName="Delete" ForeColor="Brown"></asp:LinkButton>
                </span>
            </td>
        </tr>
    </AlternatingItemTemplate>

    <EditItemTemplate>
        <tr class="edititem">
            <td>
                Name:
                <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
            </td>

            <td>
                Address:
                <asp:TextBox ID="txtAddress" runat="server" Text='<%# Eval("Address") %>'></asp:TextBox>
            </td>

            <td>
                Phone:
                <asp:TextBox ID="txtPhone" runat="server" Text='<%# Eval("Phone") %>'></asp:TextBox>
            </td>
            <td>
                <span onclick="return confirm('Are you sure to update?')">
                    <asp:LinkButton ID="btnUpdate" runat="server" Text="Update" CommandName="Update"></asp:LinkButton>
                </span>
                <asp:LinkButton ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel"></asp:LinkButton>
            </td>
        </tr>
    </EditItemTemplate>

    <InsertItemTemplate>
         <tr class="insert">
            <td>
                Name:
                <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
            </td>

            <td>
                Address:
                <asp:TextBox ID="txtAddress" runat="server" Text='<%# Eval("Address") %>'></asp:TextBox>
            </td>

            <td>
               Phone:
                <asp:TextBox ID="txtPhone" runat="server" Text='<%# Eval("Phone") %>'></asp:TextBox>
            </td>
            <td>
                <span onclick="return confirm('Are you sure to insert?')">
                    <asp:LinkButton ID="btnInsert" runat="server" Text="Insert" CommandName="Insert"></asp:LinkButton>
                </span>
                
            </td>
        </tr>
    </InsertItemTemplate>

</asp:ListView>

   <div style="text-align:center; font-weight:bold;">
       <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="5">
           <Fields>
               <asp:NumericPagerField ButtonCount="5" />
           </Fields>
       </asp:DataPager>
   </div>
    </div>
    </form>
</body>
</html>
