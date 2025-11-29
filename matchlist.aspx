<%@ Page Title="" Language="C#" MasterPageFile="~/freefire.Master" AutoEventWireup="true" CodeBehind="matchlist.aspx.cs" Inherits="WebApplication2.matchlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/plugins/datatable/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-content-wrapper">
  <!-- start page content-->
 <div class="page-content">

  <!--start breadcrumb-->
  <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
    <div class="breadcrumb-title pe-3">Tables</div>
    <div class="ps-3">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb mb-0 p-0 align-items-center">
          <li class="breadcrumb-item"><a href="javascript:;"><ion-icon name="home-outline"></ion-icon></a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">Match List</li>
        </ol>
      </nav>
    </div>
  
  </div>
  <!--end breadcrumb-->

      
  <div class="container mt-4">
    <h6 class="mb-0 text-uppercase">Match List</h6>
    <hr />

    <!-- Live Search Input -->
   <div class="row mb-3">
    <div class="col-12 d-flex justify-content-end">
        <asp:TextBox ID="txtSearch" runat="server" style="width:25%;" CssClass="form-control"
            placeholder="Search by Title..."
            AutoPostBack="true" OnTextChanged="txtSearch_TextChanged" />
    </div>
</div>

    <!-- Match Grid -->
    <div class="table-responsive">
    <asp:GridView ID="gvMatchList" runat="server"
    CssClass="table table-striped table-bordered"
    AutoGenerateColumns="False"
    PageSize="10"
    AllowPaging="True"
    DataKeyNames="id"
    OnRowEditing="gvMatchList_RowEditing"
    OnRowUpdating="gvMatchList_RowUpdating"
    OnRowCancelingEdit="gvMatchList_RowCancelingEdit"
    OnRowDeleting="gvMatchList_RowDeleting"
    OnPageIndexChanging="gvMatchList_PageIndexChanging">


            
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                <asp:BoundField DataField="Prize" HeaderText="Prize" SortExpression="Prize" />
                <asp:BoundField DataField="entryfee" HeaderText="Entry Fee" SortExpression="entryfee" />
                <asp:BoundField DataField="maxplayer" HeaderText="Max Players" SortExpression="maxplayer" />
                <asp:BoundField DataField="roomid" HeaderText="Room ID" SortExpression="roomid" />
                <asp:BoundField DataField="roompassword" HeaderText="Room Password" SortExpression="roompassword" />
                <asp:BoundField DataField="date&time" HeaderText="Date & Time"
                    SortExpression="date&time" HtmlEncode="False"
                    DataFormatString="{0:dd/MM/yyyy hh:mm tt}" />

                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <div class="d-flex align-items-center gap-2 fs-6">
                            <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit"
                                CssClass="text-warning" data-bs-toggle="tooltip" title="Edit">
                                <ion-icon name="pencil-sharp" class="md hydrated" aria-label="Edit"></ion-icon>
                            </asp:LinkButton>
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete"
                                CssClass="text-danger"
                                OnClientClick="return confirm('Are you sure you want to delete this match?');"
                                data-bs-toggle="tooltip" title="Delete">
                                <ion-icon name="trash-sharp" class="md hydrated" aria-label="Delete"></ion-icon>
                            </asp:LinkButton>
                        </div>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <div class="d-flex align-items-center gap-2 fs-6">
                            <asp:LinkButton ID="btnUpdate" runat="server" CommandName="Update"
                                CssClass="text-success" data-bs-toggle="tooltip" title="Update">
                                <ion-icon name="checkmark-sharp" class="md hydrated" aria-label="Update"></ion-icon>
                            </asp:LinkButton>
                            <asp:LinkButton ID="btnCancel" runat="server" CommandName="Cancel"
                                CssClass="text-secondary" data-bs-toggle="tooltip" title="Cancel">
                                <ion-icon name="close-sharp" class="md hydrated" aria-label="Cancel"></ion-icon>
                            </asp:LinkButton>
                        </div>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</div>




	
</div>
</asp:Content>
