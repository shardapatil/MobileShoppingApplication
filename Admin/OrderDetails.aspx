<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="OnlineMobileShoppingApplication.Admin.OrderDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheet/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="header-holder">
        <div class="header-content container">
             <div class="header-logo">
                <asp:Image ID="imgLogo" runat="server" ImageUrl="~/ProductImages/logo.JPG" />
            </div>
            <div class="header-menu d-flex">
                <div class="menu-item">
                    <asp:LinkButton ID="btnHome" runat="server" PostBackUrl="~/HomePage.aspx">Home</asp:LinkButton>
                </div>
                <div class="menu-item">
                    <asp:LinkButton ID="btnAbout" runat="server" PostBackUrl="~/AboutPage.aspx">About</asp:LinkButton>
                </div>
                <div class="menu-item">
                    <asp:LinkButton ID="btnContact" runat="server" PostBackUrl="~/Contact Page.aspx">Contact</asp:LinkButton>
                </div>
            </div>
            
        </div>
    </div>
    <div class="main-container cart-holder">
        <div class="main-content container">
            <div class="page-header-text">Order Summary</div>
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
               
            </div>
            <div class="search-filter-block d-flex align-items-center">
                <div class="search mr-5 w-50">
                    <div class="form-group mb-0 d-flex px-5">
                        <asp:TextBox ID="txtSearch" placeholder="Enter text to Search" class="form-control" runat="server"></asp:TextBox>
                        <asp:Button ID="btnSearch" class="btn btn-primary" runat="server" Text="Search" />
                    </div>
                </div>

                <div class="search mr-5 w-50">
                    <div class="form-group mb-0 d-flex px-5">
                         <asp:TextBox ID="txtFilter" placeholder="Enter Order Date in 'yyyy-mm-dd' format" class="form-control" runat="server"></asp:TextBox>
                        <asp:Button ID="btnFilter" class="btn btn-primary" runat="server" Text="Filter" OnClick="btnFilter_Click" />
                    </div>
                </div>
            </div>
            <div class="cart-product-detials-holder d-flex mx--15">
                <div class="cart-product-holder w-100 px-15">
                    <div class="cart-product d-flex box-shadow" align="center">
                        <asp:GridView ID="grdOrderSummary" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                                <asp:BoundField DataField="ProductDesc" HeaderText="Product Description" />
                                <asp:BoundField DataField="ProductPrice" HeaderText="Product Price" />
                                <asp:BoundField DataField="OrderQuantity" HeaderText="Order Quantity" />
                                <asp:BoundField DataField="OrderDate" HeaderText="Order Date" />
                                <asp:BoundField DataField="TotalAmount" HeaderText="Total Amount" />
                                <asp:TemplateField HeaderText="Image">
                                <ItemTemplate >
                                    <asp:Image ID="imgOrder" runat="server" ImageUrl ='<%# Eval("ImgDisplay") %>' height="150px" Width="150px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                    <br />
                </div>
                </div>

            <asp:Label ID="lblErrorMessage" runat="server" Text=""></asp:Label>
                <div class="cart-product-detials-holder d-flex" >
            </div>
        </div>
    </div>
        </div>
        </form>
</body>
</html>
