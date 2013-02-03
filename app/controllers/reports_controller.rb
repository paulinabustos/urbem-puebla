class ReportsController < ApplicationController

  def index
    @reports = Kaminari.paginate_array(Report.all).page(params[:page])
  end

  def new
    @report = Report.new 
  end

  def create
    @report = Report.new(params[:report]) 
    if @report.save
      redirect_to root_path, notice: 'Successfully created' 
    else
      render :new
    end
  end

  
end