<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupplierDetails.aspx.cs" Inherits="OnlineMobileShoppingApplication.Admin.SupplierDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheet/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="header-holder">
        <div class="header-content container">
            <div class="header-logo">
                <asp:Image ID="imgLogo" runat="server" ImageUrl="~/ProductImages/logo.JPG" />
            </div>
            <div class="search-holder">
                <div class="form-group">
                    <input type="text" placeholder="Search for products" class="form-control" />

                    <div class="btn-discover"">
                        <svg xmlns=" http://www.w3.org/2000/svg" height="136pt" version="1.1"
                        viewBox="-1 0 136 136.21852" width="136pt">
                        <g id="surface1">
                            <path
                                d="M 93.148438 80.832031 C 109.5 57.742188 104.03125 25.769531 80.941406 9.421875 C 57.851562 -6.925781 25.878906 -1.460938 9.53125 21.632812 C -6.816406 44.722656 -1.351562 76.691406 21.742188 93.039062 C 38.222656 104.707031 60.011719 105.605469 77.394531 95.339844 L 115.164062 132.882812 C 119.242188 137.175781 126.027344 137.347656 130.320312 133.269531 C 134.613281 129.195312 134.785156 122.410156 130.710938 118.117188 C 130.582031 117.980469 130.457031 117.855469 130.320312 117.726562 Z M 51.308594 84.332031 C 33.0625 84.335938 18.269531 69.554688 18.257812 51.308594 C 18.253906 33.0625 33.035156 18.269531 51.285156 18.261719 C 69.507812 18.253906 84.292969 33.011719 84.328125 51.234375 C 84.359375 69.484375 69.585938 84.300781 51.332031 84.332031 C 51.324219 84.332031 51.320312 84.332031 51.308594 84.332031 Z M 51.308594 84.332031 "
                                style=" stroke:none;fill-rule:nonzero;fill:#fff;fill-opacity:1;" />
                        </g>
                        </svg>
                    </div>
                </div>
            </div>
            <div class="header-menu d-flex">
                <div class="menu-item">
                    <a href="Home">Home</a>
                </div>
                <div class="menu-item">
                    <a href="About">About</a>
                </div>
                <div class="menu-item">
                    <a href="Contact">Contact</a>
                </div>
                <div class="menu-item">
                    <div class="menu-item">
                    <asp:LinkButton ID="lbtnAddSupplier" runat="server" OnClick="lbtnAddSupplier_Click">Add Supplier</asp:LinkButton>
                </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main-container homepage-holder">
        <div class="main-content container">
            <div class="tabs-holder">
                <asp:LinkButton ID="lbtnOrderDetails" runat="server" OnClick="lbtnOrderDetails_Click">Order</asp:LinkButton>               
                &nbsp;&nbsp;
                <asp:LinkButton ID="lbtnProductDetails" runat="server" OnClick="lbtnProductDetails_Click">Product</asp:LinkButton>
                &nbsp;&nbsp;
                <asp:LinkButton ID="lbtnUserDetails" runat="server" OnClick="lbtnUserDetails_Click">Customer</asp:LinkButton>
                &nbsp;&nbsp;
                <asp:LinkButton ID="lbtnSupplierDetails" runat="server" OnClick="lbtnSupplierDetails_Click">Supplier</asp:LinkButton>
                &nbsp;&nbsp;
                <asp:LinkButton ID="lbtnCategoryDetails" runat="server" OnClick="lbtnCategoryDetails_Click">Category</asp:LinkButton>
               
               <%-- <div class="tab"> Order Details</div>
                <div class="tab"> Product Details</div>
                <div class="tab active"> User Details</div>
                <div class="tab"> Supplier Details</div>
                <div class="tab"> Category Details</div>--%>
            </div>

            <div class="search-filter-block d-flex align-items-center">
                <div class="search mr-5 w-50">
                    <div class="form-group mb-0 d-flex px-5">
                        <asp:TextBox ID="txtSearch" placeholder="Enter text to Search" class="form-control" runat="server"></asp:TextBox>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-primary" OnClick="btnSupSearch_Click"/>
                    </div>
                </div>

                <div class="search mr-5 w-50">
                    <div class="form-group mb-0 d-flex px-5">
                      <asp:TextBox ID="txtFilter" placeholder="Enter text to Fiilter" class="form-control" runat="server"></asp:TextBox>
                      <asp:Button ID="btnFilter" runat="server" Text="Filter" class="btn btn-primary" OnClick="btnSupSearch_Click"/>
                    </div>
                </div>
            </div>

            <div class="tab-content-holder overflow-auto">
                <asp:GridView ID="grdSupView" runat="server" AutoGenerateColumns="False" Width="1162px">
                    <Columns>
                        <asp:BoundField DataField="SupplierID" HeaderText="Supplier ID" />
                        <asp:BoundField DataField="SupplierFName" HeaderText="First Name" />
                        <asp:BoundField DataField="SupplierMName" HeaderText="Middle Name" />
                        <asp:BoundField DataField="SupplierLName" HeaderText="Last Name" />
                        <asp:BoundField DataField="SupplierMobNo" HeaderText="Mobile No" />
                        <asp:BoundField DataField="SupplierEmail" HeaderText="Email" />
                        <asp:BoundField DataField="SupplierAddress" HeaderText="Address" />
                        <asp:BoundField DataField="SupplierCity" HeaderText="City" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
