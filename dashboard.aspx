<%@ Page Title="" Language="C#" MasterPageFile="~/freefire.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="WebApplication2.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/css/lightbox.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/js/lightbox.min.js"></script>

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
                            <li class="breadcrumb-item"><a href="javascript:;">
                                <ion-icon name="home-outline"></ion-icon>
                            </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">eCommerce</li>
                        </ol>
                    </nav>
                </div>

            </div>
            <!--end breadcrumb-->

            <div class="row">
                <div class="col-12 col-lg-6 col-xl-4 d-flex">
                    <div class="card radius-10 w-100">
                        <div class="card-body">
                            <div class="d-flex align-items-center mb-3">
                                <h6 class="mb-0">Total Traffic</h6>
                                <div class="dropdown options ms-auto">
                                    <div class="dropdown-toggle dropdown-toggle-nocaret" data-bs-toggle="dropdown">
                                        <ion-icon name="ellipsis-horizontal-sharp"></ion-icon>
                                    </div>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="#">Action</a></li>
                                        <li><a class="dropdown-item" href="#">Another action</a></li>
                                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="chart-container3">
                                <div class="piechart-legend">
                                    <h2 class="mb-1">85%</h2>
                                    <h6 class="mb-0">Total Visitors</h6>
                                </div>
                                <canvas id="chart1"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-6 col-xl-4 d-flex">
                    <div class="card radius-10 w-100">
                        <div class="card-body">
                            <div class="d-flex align-items-center mb-3">
                                <h6 class="mb-0">User Activity</h6>
                                <div class="dropdown options ms-auto">
                                    <div class="dropdown-toggle dropdown-toggle-nocaret" data-bs-toggle="dropdown">
                                        <ion-icon name="ellipsis-horizontal-sharp"></ion-icon>
                                    </div>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="#">Action</a></li>
                                        <li><a class="dropdown-item" href="#">Another action</a></li>
                                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="chart-container3">
                                <canvas id="chart2"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-12 col-xl-4 d-flex">
                    <div class="card radius-10 bg-transparent shadow-none w-100">
                        <div class="card-body p-0">
                            <div class="card radius-10">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div class="widget-icon radius-10 bg-light-success text-success">
                                            <ion-icon name="wallet-sharp"></ion-icon>
                                        </div>
                                        <div class="fs-5 ms-auto">
                                            <ion-icon name="ellipsis-horizontal-sharp" role="img" class="md hydrated"
                                                aria-label="ellipsis horizontal sharp">
                                            </ion-icon>
                                        </div>
                                    </div>
                                    <h4 class="my-3">$4,580</h4>
                                    <div class="progress mt-1" style="height: 5px;">
                                        <div class="progress-bar bg-success" role="progressbar" style="width: 65%"></div>
                                    </div>
                                    <p class="mb-0 mt-2">Earned This Month <span class="float-end">+2.4%</span></p>
                                </div>
                            </div>
                            <div class="card radius-10 mb-0">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div class="widget-icon-2 bg-light-danger text-danger">
                                            <ion-icon name="people-sharp"></ion-icon>
                                        </div>
                                        <div class="fs-5 ms-auto">
                                            <ion-icon name="ellipsis-horizontal-sharp" role="img" class="md hydrated"
                                                aria-label="ellipsis horizontal sharp">
                                            </ion-icon>
                                        </div>
                                    </div>
                                    <h4 class="my-3">8,126</h4>
                                    <div class="progress mt-1" style="height: 5px;">
                                        <div class="progress-bar bg-danger" role="progressbar" style="width: 65%"></div>
                                    </div>
                                    <p class="mb-0 mt-2">New Clients <span class="float-end">+5.3%</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--end row-->

            <div class="row">
                <div class="col col-lg-12 mx-auto">
                    <h6 class="mb-0 text-uppercase">Primary Nav Tabs</h6>
                    <hr />
                    <div class="card">
                        <div class="card-body">
                            <ul class="nav nav-tabs nav-primary" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link active" data-bs-toggle="tab" href="#primaryhome" role="tab" aria-selected="true">
                                        <div class="d-flex align-items-center">
                                            <div class="tab-icon">
                                                <ion-icon name="home-sharp" class="me-1"></ion-icon>
                                            </div>
                                            <div class="tab-title">Users</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" data-bs-toggle="tab" href="#primaryprofile" role="tab" aria-selected="false">
                                        <div class="d-flex align-items-center">
                                            <div class="tab-icon">
                                                <ion-icon name="person-sharp" class="me-1"></ion-icon>
                                            </div>
                                            <div class="tab-title">Witdrawl</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" data-bs-toggle="tab" href="#primarycontact" role="tab" aria-selected="false">
                                        <div class="d-flex align-items-center">
                                            <div class="tab-icon">
                                                <ion-icon name="call-sharp" class="me-1"></ion-icon>
                                            </div>
                                            <div class="tab-title">Recipt</div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content py-3">
                                <div class="tab-pane fade show active" id="primaryhome" role="tabpanel">
                                    <div class="card radius-10 w-100">

                                        <div class="card ">
                                            <div class="card-body table-responsive">
                                                <!-- User Count Label -->
                                                <div class="d-flex align-items-center">
                                                    <asp:Label ID="totalUsers" runat="server" Text="Label" CssClass="h5"></asp:Label>
                                                </div>

                                                <hr />

                                                <!-- Live Search -->
                                                <div class="row mb-3">
                                                    <div class="col-12 d-flex justify-content-end">
                                                        <asp:TextBox ID="txtSearch" runat="server" Style="width: 25%;" CssClass="form-control"
                                                            placeholder="Search by Email..."
                                                            AutoPostBack="true" OnTextChanged="txtSearch_TextChanged" />
                                                    </div>
                                                </div>

                                                <!-- GridView -->
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                                    CssClass="table table-striped table-bordered"
                                                    DataKeyNames="Id"
                                                    OnRowEditing="GridView1_RowEditing"
                                                    OnRowUpdating="GridView1_RowUpdating"
                                                    OnRowCancelingEdit="GridView1_RowCancelingEdit"
                                                    OnRowDeleting="GridView1_RowDeleting">

                                                    <Columns>
                                                        <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
                                                        <asp:BoundField DataField="Name" HeaderText="Name" />
                                                        <asp:BoundField DataField="Email" HeaderText="Email" />
                                                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                                                        <asp:BoundField DataField="Totalcoin" HeaderText="Total Coin" />


                                                        <asp:TemplateField HeaderText="Action">
                                                            <ItemTemplate>
                                                                <div class="d-flex gap-2 fs-6">
                                                                    <asp:LinkButton ID="btnEdit" runat="server" CssClass="text-warning"
                                                                        CommandName="Edit" ToolTip="Edit">
                                <ion-icon name="pencil-sharp"></ion-icon>
                                                                    </asp:LinkButton>
                                                                    <asp:LinkButton ID="btnDelete" runat="server" CssClass="text-danger"
                                                                        CommandName="Delete"
                                                                        OnClientClick="return confirm('Are you sure you want to delete this user?');"
                                                                        ToolTip="Delete">
                                <ion-icon name="trash-sharp"></ion-icon>
                                                                    </asp:LinkButton>
                                                                </div>
                                                            </ItemTemplate>

                                                            <EditItemTemplate>
                                                                <div class="d-flex gap-2 fs-6">
                                                                    <asp:LinkButton ID="btnUpdate" runat="server" CssClass="text-success"
                                                                        CommandName="Update" ToolTip="Update">
                                <ion-icon name="checkmark-sharp"></ion-icon>
                                                                    </asp:LinkButton>
                                                                    <asp:LinkButton ID="btnCancel" runat="server" CssClass="text-secondary"
                                                                        CommandName="Cancel" ToolTip="Cancel">
                                <ion-icon name="close-sharp"></ion-icon>
                                                                    </asp:LinkButton>
                                                                </div>
                                                            </EditItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                                <div class="tab-pane fade" id="primaryprofile" role="tabpanel">
                                    <div class="card radius-10 w-100">
                                        <div class="card">
                                            <div class="card-body table-responsive">
                                                <!-- withdrawl Count Label -->
                                                <div class="d-flex align-items-center">
                                                    <asp:Label ID="txtwithdrawl" runat="server" Text="Label" CssClass="h5"></asp:Label>
                                                </div>

                                                <hr />

                                                <!-- Live Search -->
                                                <div class="row mb-3">
                                                    <div class="col-12 d-flex justify-content-end">
                                                        <asp:TextBox ID="txtsearch2" runat="server" Style="width: 25%;" CssClass="form-control"
                                                            placeholder="Search by Email..."
                                                            AutoPostBack="true" OnTextChanged="txtSearch2_TextChanged" />
                                                    </div>
                                                </div>

                                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"
                                                    CssClass="table table-striped table-bordered"
                                                    DataKeyNames="Id"
                                                    OnRowEditing="GridView2_RowEditing"
                                                    OnRowUpdating="GridView2_RowUpdating"
                                                    OnRowCancelingEdit="GridView2_RowCancelingEdit"
                                                    OnRowDeleting="GridView2_RowDeleting">

                                                    <Columns>
                                                        <asp:BoundField DataField="Id" HeaderText="Userid" />
                                                        <asp:BoundField DataField="Name" HeaderText="Name" />
                                                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                                        <asp:BoundField DataField="Method" HeaderText="Method" />
                                                        <asp:BoundField DataField="Accountdetails" HeaderText="Account Details" />
                                                        <asp:BoundField DataField="Date" HeaderText="Date" />



                                                        <asp:TemplateField HeaderText="Action">
                                                            <ItemTemplate>
                                                                <div class="d-flex gap-2 fs-6">
                                                                    <asp:LinkButton ID="btnEdit" runat="server" CssClass="text-warning"
                                                                        CommandName="Edit" ToolTip="Edit">
                        <ion-icon name="pencil-sharp"></ion-icon>
                                                                    </asp:LinkButton>
                                                                    <asp:LinkButton ID="btnDelete" runat="server" CssClass="text-danger"
                                                                        CommandName="Delete"
                                                                        OnClientClick="return confirm('Are you sure you want to delete this user?');"
                                                                        ToolTip="Delete">
                        <ion-icon name="trash-sharp"></ion-icon>
                                                                    </asp:LinkButton>
                                                                </div>
                                                            </ItemTemplate>

                                                            <EditItemTemplate>
                                                                <div class="d-flex gap-2 fs-6">
                                                                    <asp:LinkButton ID="btnUpdate" runat="server" CssClass="text-success"
                                                                        CommandName="Update" ToolTip="Update">
                        <ion-icon name="checkmark-sharp"></ion-icon>
                                                                    </asp:LinkButton>
                                                                    <asp:LinkButton ID="btnCancel" runat="server" CssClass="text-secondary"
                                                                        CommandName="Cancel" ToolTip="Cancel">
                        <ion-icon name="close-sharp"></ion-icon>
                                                                    </asp:LinkButton>
                                                                </div>
                                                            </EditItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="primarycontact" role="tabpanel">

                                    <div class="card radius-10 w-100">
                                        <div class="card-body">
                                            <!-- recipt Count Label -->
                                            <div class="d-flex align-items-center">
                                                <asp:Label ID="txtrecipt" runat="server" Text="Label" CssClass="h5"></asp:Label>
                                            </div>

                                            <hr />

                                            <!-- Live Search -->
                                            <div class="row mb-3">
                                                <div class="col-12 d-flex justify-content-end">
                                                    <asp:TextBox ID="TextBox2" runat="server" Style="width: 25%;" CssClass="form-control"
                                                        placeholder="Search by Email..."
                                                        AutoPostBack="true" OnTextChanged="txtSearch_TextChanged" />
                                                </div>
                                            </div>

                                            <!-- GridView -->
                                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False"
                                                CssClass="table table-striped table-bordered"
                                                DataKeyNames="Id"
                                                OnRowEditing="GridView3_RowEditing"
                                                OnRowUpdating="GridView3_RowUpdating"
                                                OnRowCancelingEdit="GridView3_RowCancelingEdit"
                                                OnRowDeleting="GridView3_RowDeleting">

                                                <Columns>
                                                    <asp:BoundField DataField="Id" HeaderText="Userid" />
                                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                                    <asp:BoundField DataField="Email" HeaderText="Email" />
                                                    <asp:BoundField DataField="Date" HeaderText="Date" />
                                                   <asp:TemplateField HeaderText="Receipt">
    <EditItemTemplate>
        <asp:FileUpload ID="FileUploadRecipt" runat="server" />
        <img src='<%# ResolveUrl("~/Uploads/") + Eval("Recipt") %>' height="50"
             style="cursor:pointer;" onclick="showImagePopup(this.src)" />
    </EditItemTemplate>
    <ItemTemplate>
        <img src='<%# ResolveUrl("~/Uploads/") + Eval("Recipt") %>' height="50"
             style="cursor:pointer;" onclick="showImagePopup(this.src)" />
    </ItemTemplate>
</asp:TemplateField>









                                                    <asp:TemplateField HeaderText="Action">
                                                        <ItemTemplate>
                                                            <div class="d-flex gap-2 fs-6">
                                                                <asp:LinkButton ID="btnEdit" runat="server" CssClass="text-warning"
                                                                    CommandName="Edit" ToolTip="Edit">
                                                                <ion-icon name="pencil-sharp"></ion-icon>
                                                                </asp:LinkButton>
                                                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="text-danger"
                                                                    CommandName="Delete"
                                                                    OnClientClick="return confirm('Are you sure you want to delete this user?');"
                                                                    ToolTip="Delete">
                                                                <ion-icon name="trash-sharp"></ion-icon>
                                                                </asp:LinkButton>
                                                            </div>
                                                        </ItemTemplate>

                                                        <EditItemTemplate>
                                                            <div class="d-flex gap-2 fs-6">
                                                                <asp:LinkButton ID="btnUpdate" runat="server" CssClass="text-success"
                                                                    CommandName="Update" ToolTip="Update">
                                                                <ion-icon name="checkmark-sharp"></ion-icon>
                                                                </asp:LinkButton>
                                                                <asp:LinkButton ID="btnCancel" runat="server" CssClass="text-secondary"
                                                                    CommandName="Cancel" ToolTip="Cancel">
                                                                <ion-icon name="close-sharp"></ion-icon>
                                                                </asp:LinkButton>
                                                            </div>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
            <!--end row-->



        </div>
        <!-- end page content-->
    </div>
    <!--end page content wrapper-->
    
<div id="imagePopup" style="display:none; position:fixed; top:0; left:0; width:100%; height:100%;
     background:rgba(0,0,0,0.8); z-index:9999; text-align:center; padding-top:50px;">
    <span style="color:white; font-size:30px; position:absolute; top:20px; right:40px;
          cursor:pointer;" onclick="closeImagePopup()">&times;</span>
    <img id="popupImg" src="" style="max-width:90%; max-height:90%; border:5px solid white; border-radius:10px;">
</div>
    <script>
    function showImagePopup(src) {
        document.getElementById('popupImg').src = src;
        document.getElementById('imagePopup').style.display = 'block';
    }

    function closeImagePopup() {
        document.getElementById('imagePopup').style.display = 'none';
    }
    </script>

</asp:Content>
