<!doctype html>
<html lang="en" class="light-theme">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- loader-->
	  <link href="assets/css/pace.min.css" rel="stylesheet" />
	  <script src="assets/js/pace.min.js"></script>

    <!--plugins-->
    <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
    <link href="assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" />
    <link href="assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet" />

    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/bootstrap-extended.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/icons.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">

    <!--Theme Styles-->
    <link href="assets/css/dark-theme.css" rel="stylesheet" />
    <link href="assets/css/semi-dark.css" rel="stylesheet" />
    <link href="assets/css/header-colors.css" rel="stylesheet" />

    <title>SYN-UI - Bootstrap Admin Template</title>
  </head>
  <body>
    

 <!--start wrapper-->
    <div class="wrapper">
       
       <!--start sidebar -->
       <aside class="sidebar-wrapper" data-simplebar="true">
        <div class="sidebar-header">
          <div>
            <img src="assets/images/logo.png" class="logo-icon" alt="logo icon">
          </div>
          <div>
            <h4 class="logo-text">SYN-UI</h4>
          </div>
          <div class="toggle-icon ms-auto"><ion-icon name="menu-sharp"></ion-icon>
          </div>
        </div>
        <!--navigation-->
        <ul class="metismenu" id="menu">
          <li>
            <a href="javascript:;">
              <div class="parent-icon"><ion-icon name="home-sharp"></ion-icon>
              </div>
              <div class="menu-title">Dashboard</div>
            </a>
           
          </li>
          <li>
            <a href="javascript:;">
              <div class="parent-icon"><ion-icon name="bag-handle-sharp"></ion-icon>
              </div>
              <div class="menu-title">Banner</div>
            </a>
            
          </li>
        
          <li>
            <a href="javascript:;" >
              <div class="parent-icon"><ion-icon name="briefcase-sharp"></ion-icon>
              </div>
              <div class="menu-title">Updates</div>
            </a>
           
          </li>
          
          <li>
            <a  href="javascript:;">
              <div class="parent-icon"><ion-icon name="server-sharp"></ion-icon>
              </div>
              <div class="menu-title">Won Coins</div>
            </a>
            
          </li>
          <li>
            <a  href="javascript:;">
              <div class="parent-icon"><ion-icon name="leaf-sharp"></ion-icon>
              </div>
              <div class="menu-title">Create Match</div>
            </a>
            
          </li>
          
          <li>
            <a  href="javascript:;">
              <div class="parent-icon"><ion-icon name="newspaper-sharp"></ion-icon>
              </div>
              <div class="menu-title">Match List</div>
            </a>
            
          </li>
          <li>
            <a  href="javascript:;">
             <div class="font-22">	<i class="lni lni-users"></i>
               
              </div>
              <div class="menu-title">Match Player</div>
            </a>
            
          </li>
       
          <li>
            <a  href="javascript:;">
              <div class="parent-icon"><ion-icon name="lock-closed-sharp"></ion-icon>
              </div>
              <div class="menu-title">Upload Result</div>
            </a>
            
          </li>
          <li>
            <a href="pages-user-profile.html">
              <div class="parent-icon"><ion-icon name="person-circle-sharp"></ion-icon>
              </div>
              <div class="menu-title">Update Kills</div>
            </a>
          </li>
         
        </ul>
        <!--end navigation-->
     </aside>
     <!--end sidebar -->

        <!--start top header-->
          <header class="top-header">
            <nav class="navbar navbar-expand gap-3">
              <div class="mobile-menu-button"><ion-icon name="menu-sharp"></ion-icon></div>
              <form class="searchbar">
                <div class="position-absolute top-50 translate-middle-y search-icon ms-3"><ion-icon name="search-sharp"></ion-icon></div>
                <input class="form-control" type="text" placeholder="Search for anything">
                <div class="position-absolute top-50 translate-middle-y search-close-icon"><ion-icon name="close-sharp"></ion-icon></div>
             </form>
             <div class="top-navbar-right ms-auto">

              <ul class="navbar-nav align-items-center">
                <li class="nav-item mobile-search-button">
                  <a class="nav-link" href="javascript:;">
                    <div class="">
                      <ion-icon name="search-sharp"></ion-icon>
                    </div>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link dark-mode-icon" href="javascript:;">
                    <div class="mode-icon">
                      <ion-icon name="moon-sharp"></ion-icon> 
                    </div>
                  </a>
                </li>
                <li class="nav-item dropdown dropdown-large dropdown-apps">
                  <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;" data-bs-toggle="dropdown">
                    <div class="">
                      <ion-icon name="apps-sharp"></ion-icon>
                    </div>
                  </a>
                  <div class="dropdown-menu dropdown-menu-end dropdown-menu-dark">
                    <div class="row row-cols-3 g-3 p-3">
                      <div class="col text-center">
                        <div class="app-box mx-auto bg-gradient-purple text-white"><ion-icon name="cart-sharp"></ion-icon>
                        </div>
                        <div class="app-title">Orders</div>
                      </div>
                      <div class="col text-center">
                        <div class="app-box mx-auto bg-gradient-info text-white"><ion-icon name="people-sharp"></ion-icon>
                        </div>
                        <div class="app-title">Teams</div>
                      </div>
                      <div class="col text-center">
                        <div class="app-box mx-auto bg-gradient-success text-white"><ion-icon name="shield-checkmark-sharp"></ion-icon>
                        </div>
                        <div class="app-title">Tasks</div>
                      </div>
                      <div class="col text-center">
                        <div class="app-box mx-auto bg-gradient-danger text-white"><ion-icon name="videocam-sharp"></ion-icon>
                        </div>
                        <div class="app-title">Media</div>  
                      </div>
                      <div class="col text-center">
                        <div class="app-box mx-auto bg-gradient-warning text-white"><ion-icon name="file-tray-sharp"></ion-icon>
                        </div>
                        <div class="app-title">Files</div>
                      </div>
                      <div class="col text-center">
                        <div class="app-box mx-auto bg-gradient-branding text-white"><ion-icon name="notifications-sharp"></ion-icon>
                        </div>
                        <div class="app-title">Alerts</div>
                      </div>
                    </div>
                  </div>
                </li>
                <li class="nav-item dropdown dropdown-large">
                  <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;" data-bs-toggle="dropdown">
                    <div class="position-relative">
                      <span class="notify-badge">8</span>
                      <ion-icon name="notifications-sharp"></ion-icon>
                    </div>
                  </a>
                  <div class="dropdown-menu dropdown-menu-end">
                    <a href="javascript:;">
                      <div class="msg-header">
                        <p class="msg-header-title">Notifications</p>
                        <p class="msg-header-clear ms-auto">Marks all as read</p>
                      </div>
                    </a>
                    <div class="header-notifications-list">
                      <a class="dropdown-item" href="javascript:;">
                        <div class="d-flex align-items-center">
                          <div class="notify text-primary"><ion-icon name="cart-outline"></ion-icon>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="msg-name">New Orders <span class="msg-time float-end">2 min
                          ago</span></h6>
                            <p class="msg-info">You have recived new orders</p>
                          </div>
                        </div>
                      </a>
                      <a class="dropdown-item" href="javascript:;">
                        <div class="d-flex align-items-center">
                          <div class="notify text-danger"><ion-icon name="person-outline"></ion-icon>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="msg-name">New Customers<span class="msg-time float-end">14 Sec
                           ago</span></h6>
                            <p class="msg-info">5 new user registered</p>
                          </div>
                        </div>
                      </a>
                      <a class="dropdown-item" href="javascript:;">
                        <div class="d-flex align-items-center">
                          <div class="notify text-success"><ion-icon name="document-outline"></ion-icon>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="msg-name">24 PDF File<span class="msg-time float-end">19 min
                          ago</span></h6>
                            <p class="msg-info">The pdf files generated</p>
                          </div>
                        </div>
                      </a>
                      
                      <a class="dropdown-item" href="javascript:;">
                        <div class="d-flex align-items-center">
                          <div class="notify text-info"><ion-icon name="checkmark-done-outline"></ion-icon>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="msg-name">New Product Approved <span
                          class="msg-time float-end">2 hrs ago</span></h6>
                            <p class="msg-info">Your new product has approved</p>
                          </div>
                        </div>
                      </a>
                      <a class="dropdown-item" href="javascript:;">
                        <div class="d-flex align-items-center">
                          <div class="notify text-warning"><ion-icon name="send-outline"></ion-icon>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="msg-name">Time Response <span class="msg-time float-end">28 min
                          ago</span></h6>
                            <p class="msg-info">5.1 min avarage time response</p>
                          </div>
                        </div>
                      </a>
                      <a class="dropdown-item" href="javascript:;">
                        <div class="d-flex align-items-center">
                          <div class="notify text-danger"><ion-icon name="chatbox-ellipses-outline"></ion-icon>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="msg-name">New Comments <span class="msg-time float-end">4 hrs
                          ago</span></h6>
                            <p class="msg-info">New customer comments recived</p>
                          </div>
                        </div>
                      </a>
                      <a class="dropdown-item" href="javascript:;">
                        <div class="d-flex align-items-center">
                          <div class="notify text-primary"><ion-icon name="albums-outline"></ion-icon>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="msg-name">New 24 authors<span class="msg-time float-end">1 day
                          ago</span></h6>
                            <p class="msg-info">24 new authors joined last week</p>
                          </div>
                        </div>
                      </a>
                      <a class="dropdown-item" href="javascript:;">
                        <div class="d-flex align-items-center">
                          <div class="notify text-success"><ion-icon name="shield-outline"></ion-icon>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="msg-name">Your item is shipped <span class="msg-time float-end">5 hrs
                          ago</span></h6>
                            <p class="msg-info">Successfully shipped your item</p>
                          </div>
                        </div>
                      </a>
                      <a class="dropdown-item" href="javascript:;">
                        <div class="d-flex align-items-center">
                          <div class="notify text-warning"><ion-icon name="cafe-outline"></ion-icon>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="msg-name">Defense Alerts <span class="msg-time float-end">2 weeks
                          ago</span></h6>
                            <p class="msg-info">45% less alerts last 4 weeks</p>
                          </div>
                        </div>
                      </a>
                    </div>
                    <a href="javascript:;">
                      <div class="text-center msg-footer">View All Notifications</div>
                    </a>
                  </div>
                </li>
                <li class="nav-item dropdown dropdown-user-setting">
                  <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;" data-bs-toggle="dropdown">
                    <div class="user-setting">
                      <img src="assets/images/avatars/06.png" class="user-img" alt="">
                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                       <a class="dropdown-item" href="javascript:;">
                         <div class="d-flex flex-row align-items-center gap-2">
                            <img src="assets/images/avatars/06.png" alt="" class="rounded-circle" width="54" height="54">
                            <div class="">
                              <h6 class="mb-0 dropdown-user-name">Jhon Deo</h6>
                              <small class="mb-0 dropdown-user-designation text-secondary">UI Developer</small>
                            </div>
                         </div>
                       </a>
                     </li>
                     <li><hr class="dropdown-divider"></li>
                     <li>
                        <a class="dropdown-item" href="javascript:;">
                           <div class="d-flex align-items-center">
                             <div class=""><ion-icon name="person-outline"></ion-icon></div>
                             <div class="ms-3"><span>Profile</span></div>
                           </div>
                         </a>
                      </li>
                      <li>
                        <a class="dropdown-item" href="javascript:;">
                           <div class="d-flex align-items-center">
                             <div class=""><ion-icon name="settings-outline"></ion-icon></div>
                             <div class="ms-3"><span>Setting</span></div>
                           </div>
                         </a>
                      </li>
                      <li>
                        <a class="dropdown-item" href="javascript:;">
                           <div class="d-flex align-items-center">
                             <div class=""><ion-icon name="speedometer-outline"></ion-icon></div>
                             <div class="ms-3"><span>Dashboard</span></div>
                           </div>
                         </a>
                      </li>
                      <li>
                        <a class="dropdown-item" href="javascript:;">
                           <div class="d-flex align-items-center">
                             <div class=""><ion-icon name="wallet-outline"></ion-icon></div>
                             <div class="ms-3"><span>Earnings</span></div>
                           </div>
                         </a>
                      </li>
                      <li>
                        <a class="dropdown-item" href="javascript:;">
                           <div class="d-flex align-items-center">
                             <div class=""><ion-icon name="cloud-download-outline"></ion-icon></div>
                             <div class="ms-3"><span>Downloads</span></div>
                           </div>
                         </a>
                      </li>
                      <li><hr class="dropdown-divider"></li>
                      <li>
                        <a class="dropdown-item" href="javascript:;">
                           <div class="d-flex align-items-center">
                             <div class=""><ion-icon name="log-out-outline"></ion-icon></div>
                             <div class="ms-3"><span>Logout</span></div>
                           </div>
                         </a>
                      </li>
                  </ul>
                </li>

               </ul>

              </div>
            </nav>
          </header>
        <!--end top header-->


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
            <div class="ms-auto">
              <div class="btn-group">
                <button type="button" class="btn btn-outline-primary">Settings</button>
                <button type="button" class="btn btn-outline-primary split-bg-primary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown">	<span class="visually-hidden">Toggle Dropdown</span>
                </button>
                <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-end">	<a class="dropdown-item" href="javascript:;">Action</a>
                  <a class="dropdown-item" href="javascript:;">Another action</a>
                  <a class="dropdown-item" href="javascript:;">Something else here</a>
                  <div class="dropdown-divider"></div>	<a class="dropdown-item" href="javascript:;">Separated link</a>
                </div>
              </div>
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
                                aria-label="ellipsis horizontal sharp"></ion-icon>
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
                                aria-label="ellipsis horizontal sharp"></ion-icon>
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
             </div><!--end row-->

             <div class="row">
  <div class="col col-lg-12 mx-auto">
    <h6 class="mb-0 text-uppercase">Primary Nav Tabs</h6>
    <hr/>
    <div class="card">
					<div class="card-body">
						<ul class="nav nav-tabs nav-primary" role="tablist">
							<li class="nav-item" role="presentation">
								<a class="nav-link active" data-bs-toggle="tab" href="#primaryhome" role="tab" aria-selected="true">
									<div class="d-flex align-items-center">
										<div class="tab-icon"><ion-icon name="home-sharp" class="me-1"></ion-icon>
										</div>
										<div class="tab-title">Users</div>
									</div>
								</a>
							</li>
							<li class="nav-item" role="presentation">
								<a class="nav-link" data-bs-toggle="tab" href="#primaryprofile" role="tab" aria-selected="false">
									<div class="d-flex align-items-center">
										<div class="tab-icon"><ion-icon name="person-sharp" class="me-1"></ion-icon>
										</div>
										<div class="tab-title">Witdrawl</div>
									</div>
								</a>
							</li>
							<li class="nav-item" role="presentation">
								<a class="nav-link" data-bs-toggle="tab" href="#primarycontact" role="tab" aria-selected="false">
									<div class="d-flex align-items-center">
										<div class="tab-icon"><ion-icon name="call-sharp" class="me-1"></ion-icon>
										</div>
										<div class="tab-title">Recipt</div>
									</div>
								</a>
							</li>
						</ul>
						<div class="tab-content py-3">
							<div class="tab-pane fade show active" id="primaryhome" role="tabpanel">
            
                             <div class="card radius-10 w-100">
              <div class="card">
              <div class="card-body">
                <div class="d-flex align-items-center">
                   <h5 class="mb-0">Customer Details</h5>
                    <form class="ms-auto position-relative">
                      <div class="position-absolute top-50 translate-middle-y search-icon px-3"><ion-icon name="search-sharp"></ion-icon></div>
                      <input class="form-control ps-5" type="text" placeholder="search">
                    </form>
                </div>
                   <form id="form1" runat="server">
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table align-middle table-responsive mt-3">
                      <Columns>
                          <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" />
                          <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
                          <asp:BoundField DataField="Address" HeaderText="Address" />
                          <asp:BoundField DataField="City" HeaderText="City" />
                          <asp:BoundField DataField="PinCode" HeaderText="Pin Code" />
                          <asp:BoundField DataField="Country" HeaderText="Country" />

                       
                          <asp:TemplateField HeaderText="Actions">
                              <ItemTemplate>
                                  <div class="table-actions d-flex align-items-center gap-3 fs-6">
                                      <a href="javascript:;" class="text-primary" data-bs-toggle="tooltip" title="Views">
                                          <i class="bi bi-eye-fill"></i>
                                      </a>
                                      <a href="javascript:;" class="text-warning" data-bs-toggle="tooltip" title="Edit">
                                          <i class="bi bi-pencil-fill"></i>
                                      </a>
                                      <a href="javascript:;" class="text-danger" data-bs-toggle="tooltip" title="Delete">
                                          <i class="bi bi-trash-fill"></i>
                                      </a>
                                  </div>
                              </ItemTemplate>
                          </asp:TemplateField>
                      </Columns>
                  </asp:GridView>

                       </form>

                  <div class="table-responsive mt-3">
                  <table class="table align-middle">
                    <thead class="table-secondary">
                      <tr>
                       <th>#</th>
                       <th>Name</th>
                       <th>Address</th>
                       <th>City</th>
                       <th>Pin Code</th>
                       <th>Country</th>
                       <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                       <td>1</td>
                        <td>
                          <div class="d-flex align-items-center gap-3 cursor-pointer">
                             <img src="assets/images/avatars/01.png" class="rounded-circle" width="44" height="44" alt="">
                             <div class="">
                               <p class="mb-0">Thomas Hardy</p>
                             </div>
                          </div>
                        </td>
                        <td>89 Chicago UK</td>
                        <td>Chicago</td>
                        <td>8574201</td>
                        <td>United Kingdom</td>
                        <td>
                          <div class="table-actions d-flex align-items-center gap-3 fs-6">
                            <a href="javascript:;" class="text-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Views" aria-label="Views"><i class="bi bi-eye-fill"></i></a>
                            <a href="javascript:;" class="text-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Edit" aria-label="Edit"><i class="bi bi-pencil-fill"></i></a>
                            <a href="javascript:;" class="text-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Delete" aria-label="Delete"><i class="bi bi-trash-fill"></i></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                       <td>2</td>
                        <td>
                          <div class="d-flex align-items-center gap-3 cursor-pointer">
                             <img src="assets/images/avatars/02.png" class="rounded-circle" width="44" height="44" alt="">
                             <div class="">
                               <p class="mb-0">Victoria Hardy</p>
                             </div>
                          </div>
                        </td>
                        <td>77 New York UK</td>
                        <td>New York</td>
                        <td>8956370</td>
                        <td>United Kingdom</td>
                        <td>
                         <div class="table-actions d-flex align-items-center gap-3 fs-6">
                           <a href="javascript:;" class="text-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Views" aria-label="Views"><i class="bi bi-eye-fill"></i></a>
                           <a href="javascript:;" class="text-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Edit" aria-label="Edit"><i class="bi bi-pencil-fill"></i></a>
                           <a href="javascript:;" class="text-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Delete" aria-label="Delete"><i class="bi bi-trash-fill"></i></a>
                         </div>
                       </td>
                      </tr>
                      <tr>
                       <td>3</td>
                        <td>
                          <div class="d-flex align-items-center gap-3 cursor-pointer">
                             <img src="assets/images/avatars/03.png" class="rounded-circle" width="44" height="44" alt="">
                             <div class="">
                               <p class="mb-0">Maria Anders</p>
                             </div>
                          </div>
                        </td>
                        <td>56 Poland UK</td>
                        <td>Poland</td>
                        <td>3265840</td>
                        <td>United Kingdom</td>
                        <td>
                         <div class="table-actions d-flex align-items-center gap-3 fs-6">
                           <a href="javascript:;" class="text-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Views" aria-label="Views"><i class="bi bi-eye-fill"></i></a>
                           <a href="javascript:;" class="text-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Edit" aria-label="Edit"><i class="bi bi-pencil-fill"></i></a>
                           <a href="javascript:;" class="text-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Delete" aria-label="Delete"><i class="bi bi-trash-fill"></i></a>
                         </div>
                       </td>
                      </tr>
                      <tr>
                       <td>4</td>
                        <td>
                          <div class="d-flex align-items-center gap-3 cursor-pointer">
                             <img src="assets/images/avatars/04.png" class="rounded-circle" width="44" height="44" alt="">
                             <div class="">
                               <p class="mb-0">Maria Anders</p>
                             </div>
                          </div>
                        </td>
                        <td>47-A Delhi India</td>
                        <td>Delhi</td>
                        <td>6535420</td>
                        <td>India</td>
                        <td>
                         <div class="table-actions d-flex align-items-center gap-3 fs-6">
                           <a href="javascript:;" class="text-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Views" aria-label="Views"><i class="bi bi-eye-fill"></i></a>
                           <a href="javascript:;" class="text-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Edit" aria-label="Edit"><i class="bi bi-pencil-fill"></i></a>
                           <a href="javascript:;" class="text-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Delete" aria-label="Delete"><i class="bi bi-trash-fill"></i></a>
                         </div>
                       </td>
                      </tr>
                      <tr>
                       <td>5</td>
                        <td>
                          <div class="d-flex align-items-center gap-3 cursor-pointer">
                             <img src="assets/images/avatars/05.png" class="rounded-circle" width="44" height="44" alt="">
                             <div class="">
                               <p class="mb-0">Martin Loother</p>
                             </div>
                          </div>
                        </td>
                        <td>37 B Columbo Shri Lanka</td>
                        <td>Columbo</td>
                        <td>9645230</td>
                        <td>Shri Lanka</td>
                        <td>
                         <div class="table-actions d-flex align-items-center gap-3 fs-6">
                           <a href="javascript:;" class="text-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Views" aria-label="Views"><i class="bi bi-eye-fill"></i></a>
                           <a href="javascript:;" class="text-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Edit" aria-label="Edit"><i class="bi bi-pencil-fill"></i></a>
                           <a href="javascript:;" class="text-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Delete" aria-label="Delete"><i class="bi bi-trash-fill"></i></a>
                         </div>
                       </td>
                      </tr>
                      <tr>
                       <td>6</td>
                        <td>
                          <div class="d-flex align-items-center gap-3 cursor-pointer">
                             <img src="assets/images/avatars/06.png" class="rounded-circle" width="44" height="44" alt="">
                             <div class="">
                               <p class="mb-0">Martin Loother</p>
                             </div>
                          </div>
                        </td>
                        <td>68 New York UK</td>
                        <td>New York</td>
                        <td>7854230</td>
                        <td>United Kingdom</td>
                      <td>
                          <div class="d-flex align-items-center gap-3 fs-6">
                            <a href="javascript:;" class="text-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="View detail" aria-label="Views"><ion-icon name="eye-sharp" role="img" class="md hydrated" aria-label="eye sharp"></ion-icon></a>
                            <a href="javascript:;" class="text-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Edit info" aria-label="Edit"><ion-icon name="pencil-sharp" role="img" class="md hydrated" aria-label="pencil sharp"></ion-icon></a>
                            <a href="javascript:;" class="text-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Delete" aria-label="Delete"><ion-icon name="trash-sharp" role="img" class="md hydrated" aria-label="trash sharp"></ion-icon></a>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>

</div>
                            </div>
							<div class="tab-pane fade" id="primaryprofile" role="tabpanel">
            <img src="assets/images/carousel/07.jpg" alt="" class="radius-10 mb-3 img-fluid">
								<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
							</div>
							<div class="tab-pane fade" id="primarycontact" role="tabpanel">
            <img src="assets/images/carousel/09.jpg" alt="" class="radius-10 mb-3 img-fluid">
								<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
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


        <!--start footer-->
           <footer class="footer">
            <div class="footer-text">
               Copyright © 2021. All right reserved.
            </div>
            </footer>
          <!--end footer-->


        <!--Start Back To Top Button-->
		     <a href="javaScript:;" class="back-to-top"><ion-icon name="arrow-up-outline"></ion-icon></a>
         <!--End Back To Top Button-->
  
         <!--start switcher-->
         <div class="switcher-body">
          <button class="btn btn-primary btn-switcher shadow-sm" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling"><ion-icon name="color-palette-sharp" class="me-0"></ion-icon></button>
          <div class="offcanvas offcanvas-end shadow border-start-0 p-2" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling">
            <div class="offcanvas-header border-bottom">
              <h5 class="offcanvas-title" id="offcanvasScrollingLabel">Theme Customizer</h5>
              <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"></button>
            </div>
            <div class="offcanvas-body">
              <h6 class="mb-0">Theme Variation</h6>
              <hr>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="LightTheme" value="option1" checked>
                <label class="form-check-label" for="LightTheme">Light</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="DarkTheme" value="option2">
                <label class="form-check-label" for="DarkTheme">Dark</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="SemiDark" value="option3">
                <label class="form-check-label" for="SemiDark">Semi Dark</label>
              </div>
              <hr/>
              <h6 class="mb-0">Header Colors</h6>
              <hr/>
              <div class="header-colors-indigators">
                <div class="row row-cols-auto g-3">
                  <div class="col">
                    <div class="indigator headercolor1" id="headercolor1"></div>
                  </div>
                  <div class="col">
                    <div class="indigator headercolor2" id="headercolor2"></div>
                  </div>
                  <div class="col">
                    <div class="indigator headercolor3" id="headercolor3"></div>
                  </div>
                  <div class="col">
                    <div class="indigator headercolor4" id="headercolor4"></div>
                  </div>
                  <div class="col">
                    <div class="indigator headercolor5" id="headercolor5"></div>
                  </div>
                  <div class="col">
                    <div class="indigator headercolor6" id="headercolor6"></div>
                  </div>
                  <div class="col">
                    <div class="indigator headercolor7" id="headercolor7"></div>
                  </div>
                  <div class="col">
                    <div class="indigator headercolor8" id="headercolor8"></div>
                  </div>
                </div>
              </div>
              
            </div>
          </div>
         </div>
         <!--end switcher-->


          <!--start overlay-->
           <div class="overlay nav-toggle-icon"></div>
          <!--end overlay-->

     </div>
  <!--end wrapper-->


    <!-- JS Files-->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/plugins/simplebar/js/simplebar.min.js"></script>
    <script src="assets/plugins/metismenu/js/metisMenu.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <!--plugins-->
    <script src="assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>
    <script src="assets/plugins/chartjs/chart.min.js"></script>
    <script src="assets/js/index.js"></script>
    <!-- Main JS-->
    <script src="assets/js/main.js"></script>


  </body>
</html>