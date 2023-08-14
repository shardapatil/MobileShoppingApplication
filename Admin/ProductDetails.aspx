<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="OnlineMobileShoppingApplication.Admin.ProductDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheet/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="header-holder">
        <div class="header-content container">
            <div class="header-logo">
                <asp:Image ID="imgLogo" runat="server" ImageUrl="~/ProductImages/logo.JPG" />
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
                         <asp:TextBox ID="txtFilter" placeholder="Enter text to Search" class="form-control" runat="server"></asp:TextBox>
                        <asp:Button ID="btnFilter" class="btn btn-primary" runat="server" Text="Filter" OnClick="btnFilter_Click" />
                    </div>
                </div>
            </div>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <br />
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                        <ProgressTemplate>
                            Loading...
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <br />
                     <div class="tab-content-holder overflow-auto">
                <asp:GridView ID="grdProductDetails" runat="server" AutoGenerateColumns="False" Width="1159px">
                    <Columns>
                        <asp:BoundField DataField="ProductID" HeaderText="ProductI D" />
                        <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                        <asp:BoundField DataField="ProductDesc" HeaderText="Product Description" />
                        <asp:BoundField DataField="ProductPrice" HeaderText="Product Price" />
                     
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate >
                                <asp:Image ID="Image1" runat="server" ImageUrl ='<%# Eval("ProductImgUpload") %>' height="120px" Width="150px" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                        <asp:BoundField DataField="SupplierName" HeaderText="Supplier Name" />
                    </Columns>
                </asp:GridView>
            </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnSearch" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>

           
        </div>
    </div>
    </form>
</body>
</html>
