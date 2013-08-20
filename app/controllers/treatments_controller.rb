class TreatmentsController < ApplicationController
  before_action :find_treatment, only: [ :show, :edit ]

  def new
    @treatment = Treatment.new
  end

  def create
    @treatment = Treatment.create(treatment_params)
    if @treatment.save
      flash[:notice] = "Treatment created successfully"
      redirect_to @treatment
    else
      flash[:error] = "Treatment was not created"
      render :action => 'new'
    end
  end

  def update
  end

  def destroy
  end

  def index
    @treatments = Treatment.paginate(:page => params[:page], :per_page => 10)
  end

  def show
  end

  def edit
  end

  private
  def find_treatment
    @treatment = Treatment.find(params[:id])
  end
  def treatment_params
    unless params[:treatment].blank?
      params.require(:treatment).permit(:date, :full_treatment, :bath, :hair_dry, :teeth, :ears, :claws, :shaving, :napping, :brush, :form_cut, :walk, :price, :minutes)
    end
  end
end


