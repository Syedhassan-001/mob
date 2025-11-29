<%@ Page Title="" Language="C#" MasterPageFile="~/freefire.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="WebApplication2.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <!-- start page content wrapper-->
     <div class="page-content-wrapper">
       <!-- start page content-->
      <div class="page-content">

       <!--start breadcrumb-->
       <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
         <div class="breadcrumb-title pe-3">Dashboard</div>
         <div class="ps-3">
           <nav aria-label="breadcrumb">
             <ol class="breadcrumb mb-0 p-0 align-items-center">
               <li class="breadcrumb-item"><a href="javascript:;"><ion-icon name="home-outline"></ion-icon></a>
               </li>
               <li class="breadcrumb-item active" aria-current="page">eCommerce</li>
             </ol>
           </nav>
         </div>
      
       </div>
                  <div class="card">
  <div class="card-body">
    <div class="border p-3 rounded">
      <h6 class="mb-0 text-uppercase">Create Match</h6>
      <hr />
      <div class="row g-3">

        <!-- Title -->
       <div class="col-md-6">
  <label class="form-label">Match Type</label>
  <asp:DropDownList ID="ddlMatchType" runat="server" CssClass="form-select" ValidationGroup="matchForm">
    <asp:ListItem Text="-- Select Match Type --" Value="" />
    <asp:ListItem Text="One V One" Value="1v1" />
    <asp:ListItem Text="TDM" Value="tdm" />
    <asp:ListItem Text="Squad" Value="squad" />
  </asp:DropDownList>
  <asp:RequiredFieldValidator ID="rfvMatchType" runat="server" ControlToValidate="ddlMatchType"
      InitialValue="" ErrorMessage="Please select a match type"
      CssClass="text-danger" Display="Dynamic" ValidationGroup="matchForm" />
</div>


        <!-- Prize -->
        <div class="col-md-6">
          <label class="form-label">Prize</label>
          <asp:TextBox ID="txtPrize" runat="server" CssClass="form-control" />
          <asp:RequiredFieldValidator ID="rfvPrize" runat="server" ControlToValidate="txtPrize"
              ErrorMessage="Prize is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="matchForm" />
        </div>

        <!-- Entry Fee -->
        <div class="col-6">
          <label class="form-label">Entry Fee</label>
          <asp:TextBox ID="txtEntryFee" runat="server" CssClass="form-control" />
          <asp:RequiredFieldValidator ID="rfvEntryFee" runat="server" ControlToValidate="txtEntryFee"
              ErrorMessage="Entry Fee is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="matchForm" />
        </div>

        <!-- Max Player -->
        <div class="col-6">
          <label class="form-label">Max Player</label>
          <asp:TextBox ID="txtMaxPlayer" runat="server" CssClass="form-control" />
          <asp:RequiredFieldValidator ID="rfvMaxPlayer" runat="server" ControlToValidate="txtMaxPlayer"
              ErrorMessage="Max Player is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="matchForm" />
        </div>

        <!-- Room ID -->
        <div class="col-6">
          <label class="form-label">Room ID</label>
          <asp:TextBox ID="txtRoomId" runat="server" CssClass="form-control" />
          <asp:RequiredFieldValidator ID="rfvRoomId" runat="server" ControlToValidate="txtRoomId"
              ErrorMessage="Room ID is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="matchForm" />
        </div>

        <!-- Room Password -->
        <div class="col-6">
          <label class="form-label">Room Password</label>
          <asp:TextBox ID="txtRoomPassword" runat="server" CssClass="form-control" />
          <asp:RequiredFieldValidator ID="rfvRoomPassword" runat="server" ControlToValidate="txtRoomPassword"
              ErrorMessage="Room Password is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="matchForm" />
        </div>

        <!-- Date & Time -->
        <div class="col-12">
          <label class="form-label">Date & Time</label>
          <asp:TextBox ID="txtDateTime" runat="server" TextMode="DateTimeLocal" CssClass="form-control" />
          <asp:RequiredFieldValidator ID="rfvDateTime" runat="server" ControlToValidate="txtDateTime"
              ErrorMessage="Date & Time is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="matchForm" />
        </div>

        <!-- Submit Button -->
        <div class="col-12">
          <div class="d-grid">
            <asp:Button ID="btnCreate" runat="server" Text="Create Match" CssClass="btn btn-primary"
                ValidationGroup="matchForm" OnClick="btnCreate_Click"  />
          </div>
        </div>

      </div>
    </div>
  </div>
</div>

</div>
         <!-- end page content-->
     </div>

    <!-- end page content wrapper-->
</asp:Content>
