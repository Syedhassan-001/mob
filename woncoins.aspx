<%@ Page Title="" Language="C#" MasterPageFile="~/freefire.Master" AutoEventWireup="true" CodeBehind="woncoins.aspx.cs" Inherits="WebApplication2.woncoins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
               <li class="breadcrumb-item active" aria-current="page">Won Coins</li>
             </ol>
           </nav>
         </div>
     
       </div>
                  <div class="card">
                <div class="card-body">
                  <div class="border p-3 rounded">
                  <h6 class="mb-0 text-uppercase">Update Won coins</h6>
                   <hr>
                  <div class="row g-3">
                    <div class="col-md-6">
                      <label class="form-label">Email</label>
                      <input type="text" class="form-control">
                    </div>
                    <div class="col-md-6">
                      <label class="form-label">Coins</label>
                      <input type="text" class="form-control">
                    </div>
                  
                     
                 
                      <div class="col-12">
                          <div class="d-grid">
                              <button type="submit" class="btn btn-primary">Create match</button>
                          </div>
                      </div>
                      
                  </div>
                </div>
                </div>
              </div>
</div>
         <!-- end page content-->
     </div>
</asp:Content>
