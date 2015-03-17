class WorkOrdersController < ApplicationController
  before_action :set_work_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @work_orders = WorkOrder.all
    respond_with(@work_orders)
  end

  def show
    respond_with(@work_order)
  end

  def new
    @work_order = WorkOrder.new
    respond_with(@work_order)
  end

  def edit
  end

  def create
    @work_order = WorkOrder.new(work_order_params)
    @work_order.save
    respond_with(@work_order)
  end

  def update
    @work_order.update(work_order_params)
    respond_with(@work_order)
  end

  def destroy
    @work_order.destroy
    respond_with(@work_order)
  end

  private
    def set_work_order
      @work_order = WorkOrder.find(params[:id])
    end

    def work_order_params
      params.require(:work_order).permit(:startTime, :endTime, :customerId, :languageTo, :languageFrom)
    end
end
