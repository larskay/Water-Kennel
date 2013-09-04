class TreatmentsController < ApplicationController

  before_action :find_treatment, only: [ :show, :edit ]
  before_action :find_dog, only: [:create, :new, :show, :edit, :update, :destroy, :index]
  before_action :set_treatment, only: [:show, :edit, :update, :destroy]

  def new
    @treatment = @dog.treatments.build
  end

  def create
    @treatment = @dog.treatments.build(treatment_params)
    if @treatment.save
      flash[:notice] = "Treatment created successfully"
      redirect_to [@dog, @treatment]
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
    @treatments = Treatments.paginate(:page => params[:page], :per_page => 10)
  end

  def show
  end

  def edit
  end

  private
  def find_treatment
    @treatment = Treatment.find(params[:id])
  end

  def find_dog
    @dog = Dog.find(params[:dog_id])
  end

  def set_treatment
    @treatment = @dog.treatments.find(params[:id])
  end

  def treatment_params
    unless params[:treatment].blank?
      params.require(:treatment).permit(:date, :full_treatment, :bath, :hair_dry, :teeth, :ears, :claws, :shaving, :napping, :brush, :form_cut, :walk, :price, :minutes)
    end
  end
end


