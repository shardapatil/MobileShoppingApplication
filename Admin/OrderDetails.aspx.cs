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
    public partial class OrderDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            OrderSummaryBAL ObjSumBAL = new OrderSummaryBAL();
            var responsee = ObjSumBAL.ViewOrderDetails();

            grdOrderSummary.DataSource = responsee;
            grdOrderSummary.DataBind();
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

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            OrderSummaryRequestBE ObjOrder = new OrderSummaryRequestBE();
            
            ObjOrder.DateFilter = txtFilter.Text;

            OrderSummaryBAL ObjOrderBAL = new OrderSummaryBAL();
            List<OrderSummaryResponseBE> ObjListOrderResponse;
            ObjListOrderResponse = ObjOrderBAL.FilterOrderDetails(ObjOrder);

            grdOrderSummary.DataSource = ObjListOrderResponse;
            grdOrderSummary.DataBind();


            //foreach (var r in ObjListOrderResponse)
            //{
            //    lblErrorMessage.Text = r.ErrorMessage.ToString();
            //}
        }
    }
}