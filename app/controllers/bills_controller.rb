class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]

  def index
    @bills = Bill.all
  end

  def show
  end

  def new
    @bill = Bill.new
    @company = @bill.build_company
  end

  def edit
  end

  def create
    @bill = Bill.new(bill_params)

    respond_to do |format|
      if @bill.save

        #iterate through each of the attachments
        params[:bill][:document_data].each do |file|
          @bill.attachments.create!(:attachment => file)
          #create a document associated with the bill that has just been created
        end
        flash[:success] = 'Bill was successfully created.'
        format.html { redirect_to bills_url }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @bill.update(bill_params)
        flash[:success] = 'Bill was successfully updated.'
        format.html { redirect_to bills_url }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @bill.destroy
    respond_to do |format|
      flash[:success] = 'Bill was successfully destroyed.'
      format.html { redirect_to bills_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill
      @bill = Bill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_params
      params.require(:bill).permit(:description, :period, :end_period, :amount, :deadline, :paid, :company_id, company_attributes: [:name], :document_data => [])
    end

end
