class Admin::OrdersController < Admin::BaseController

def show
     if params[:type] == "ordered"
      @orders = Order.ordered
     elsif params[:type] == "paid"
      @orders = Order.paid
     elsif params[:type] == "cancelled"
      @orders = Order.cancelled
     elsif params[:type] == "completed"
      @orders = Order.completed
     else
      @orders = Order.all
     end
  end

  def destroy
    order = Order.find(params[:order_id])
    order.delete
    redirect_to admin_dashboard_path
  end

  def update
    order = Order.find(params[:order_id])
    if params[:update_type] == "complete"    
      order.update_status_complete
      redirect_to admin_dashboard_path
    elsif params[:update_type] == "paid"
      order.update_status_paid
      redirect_to admin_dashboard_path
    else
      flash[:error] = "could not update status"
      redirect_to admin_dashboard_path
    end
  end

  
end