using OnlineMobileShoppingApplicationBAL;
using OnlineMobileShoppingApplicationBE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineMobileShoppingApplication.Admin
{
    public partial class CategoryDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                CategoryBAL ObjCatBAL = new CategoryBAL();
                List<CategoryResponseBE> ObjListCatResponse;
                ObjListCatResponse = ObjCatBAL.GetCategoryDetails();

                grdCategory.DataSource = ObjListCatResponse;
                grdCategory.DataBind();
            }
           
        }

        protected void btnCatSearch_Click(object sender, EventArgs e)
        {
            CategoryRequestBE ObjatReq = new CategoryRequestBE();
            string CatSearchName = txtCatSearch.Text.ToString();
            ObjatReq.CategorySearch = CatSearchName;

            CategoryBAL ObjCatBAL = new CategoryBAL();
            List<CategoryResponseBE> ObjListCatResponse;
            ObjListCatResponse = ObjCatBAL.searchCategoryDetails(ObjatReq);

            grdCategory.DataSource = ObjListCatResponse;
            grdCategory.DataBind();
        }

        protected void imgBtnEdit_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            int rowID = row.RowIndex;
            txtCategoryID.Text = grdCategory.DataKeys[rowID].Value.ToString();
            txtCategoryName.Text = row.Cells[0].Text;
            txtCategoryDescription.Text = row.Cells[1].Text;           
            ModalPopupExtender1.Show();

        }

        protected void imgBtnDelete_Click(object sender, ImageClickEventArgs e)
        {

        }

        //update
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            CategoryRequestBE ObjatReq = new CategoryRequestBE();
            CategoryBAL ObjCatBAL = new CategoryBAL();
            ObjatReq.CategoryID = Convert.ToInt32(txtCategoryID.Text);
            ObjatReq.CategoryName = txtCategoryName.Text.Trim();
            ObjatReq.CategoryDesc = txtCategoryDescription.Text.Trim();
            
            var CategoryResponse = ObjCatBAL.UpdateCategoryDetails(ObjatReq);

            if (CategoryResponse.Status == 1)
            {
                lblStatus.Text = "Category Updated Successfully";
              
                List<CategoryResponseBE> ObjListCatResponse;
                ObjListCatResponse = ObjCatBAL.GetCategoryDetails();

                grdCategory.DataSource = ObjListCatResponse;
                grdCategory.DataBind();
            }
            else
            {
                lblStatus.Text = "Failed to Update Category";
            }
             
        }

        protected void lbtnOrderDetails_Click(object sender, EventArgs e)
        {
           Response.Redirect("OrderDetails.aspx");
        }

        protected void lbtnProductDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductDetails.aspx");
        }

        protected void lbtnUserDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerDetails.aspx");
        }

        protected void lbtnSupplierDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupplierDetails.aspx");
        }

        protected void lbtnCategoryDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("CategoryDetails.aspx");
        }

        protected void lbtnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}