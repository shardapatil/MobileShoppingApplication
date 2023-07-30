<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoryDetails.aspx.cs" Inherits="OnlineMobileShoppingApplication.Admin.CategoryDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
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
                <div class="menu-item cart">
                    <asp:LinkButton ID="lbtnLogOut" runat="server" OnClick="lbtnLogOut_Click" Font-Size="Larger">Log Out</asp:LinkButton>
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
                        <asp:TextBox ID="txtCatSearch" runat="server" placeholder="Enter text to Search" class="form-control"></asp:TextBox>
                        <asp:Button ID="btnCatSearch" runat="server" Text="Search" class="btn btn-primary" OnClick="btnCatSearch_Click"/>                     
                        <br />
                    </div>
                </div>

                <div class="search mr-5 w-50">
                    <div class="form-group mb-0 d-flex px-5">
                        <asp:TextBox ID="txtCatFilter" runat="server" placeholder="Enter text to Fiilter" class="form-control"></asp:TextBox>
                        <asp:Button ID="btnCatFilter" runat="server" Text="Flter" class="btn btn-primary"/>
                        <br />
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
                <asp:GridView ID="grdCategory" runat="server" AutoGenerateColumns="False" Width="955px" DataKeyNames="CategoryID">
                    <Columns>
                        <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                        <asp:BoundField DataField="CategoryDesc" HeaderText="Category Description" />
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:ImageButton ID="imgBtnEdit" runat="server" ImageUrl="~/ProductImages/edit.jpg" OnClick="imgBtnEdit_Click" Width="30px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:ImageButton ID="imgBtnDelete" runat="server" ImageUrl="~/ProductImages/delete.png" OnClick="imgBtnDelete_Click" Width="30px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            <div>
                <br />
                    <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                
                <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlpopup"
                            CancelControlID="btnCancel" BackgroundCssClass="modalBackground">
                        </ajaxToolkit:ModalPopupExtender>
                        <asp:Button ID="btnShowPopup" runat="server" Style="display: none" />
                        <asp:Panel ID="pnlpopup" runat="server" BackColor="White" Height="269px" Width="400px">
                            <table width="100%" style="border: Solid 3px #D55500; width: 100%; height: 100%" cellpadding="20" cellspacing="0">
                               
                               <tr>
                                   <td><asp:Label ID="lblCategoryID" runat="server" Text="Category ID : "></asp:Label>  </td>
                                   <td><asp:TextBox ID="txtCategoryID" runat="server" ReadOnly="true"></asp:TextBox>     </td>
                               </tr>

                               <tr>
                                   <td><asp:Label ID="lblCategoryName" runat="server" Text="CategoryName"></asp:Label>  </td>
                                    <td><asp:TextBox ID="txtCategoryName" runat="server"></asp:TextBox>     </td>
                               </tr>
                               <tr>
                    
                                   <td><asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label> </td>
                                   <td><asp:TextBox ID="txtCategoryDescription" runat="server"></asp:TextBox></td>
                               </tr>
                                <tr>
                                    <td></td>
                                    <td><asp:Button ID="btnUpdate" CommandName="Update" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                </div>

                    </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnCatSearch" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </div>
    </form>
</body>
</html>
