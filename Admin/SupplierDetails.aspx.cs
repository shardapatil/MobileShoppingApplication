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
    public partial class SupplierDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SupplierBAL ObjSupBAL = new SupplierBAL();
            List<SupplierResponseBE> ObjListSupResponse = new List<SupplierResponseBE>();
            ObjListSupResponse = ObjSupBAL.GetSupplierDetails();

            grdSupView.DataSource = ObjListSupResponse;
            grdSupView.DataBind();
        }

       //SEARCH DISPLAY
        protected void btnSupSearch_Click(object sender, EventArgs e)
        {
            SupplierRequestBE ObjReq = new SupplierRequestBE();
            string TextSearch = txtSearch.Text.ToString();
            ObjReq.TextSearch = TextSearch;

            SupplierBAL ObjSupBAL = new SupplierBAL();
            List<SupplierResponseBE> ObjListSupResponse = new List<SupplierResponseBE>();
            ObjListSupResponse = ObjSupBAL.SearchSupplierDetails(ObjReq);

            grdSupView.DataSource = ObjListSupResponse;
            grdSupView.DataBind();

        }

        protected void lbtnOrderDetails_Click(object sender, EventArgs e)
        {
            // Response.Redirect("");
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

        protected void lbtnAddSupplier_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Supplier.aspx");
        }

        
    }
}