class OwnersController < ApplicationController
  before_action :set_owner, only: [:edit, :show ]

  def create
    @owner = Owner.create(owner_params)
    if @owner.save
      flash[:notice] = "Owner created successfully"
      redirect_to @owner
    else
      flash[:error] = "Owner was not created"
      render :action => 'new'
    end
  end

  def show
  end

  def index
    @owners = Owner.paginate(:page => params[:page], :per_page => 10)
  end

  def destroy
  end

  def edit
  end
  
  def new
    @owner = Owner.new
  end
  def update
  end
  private
  def set_owner
    @owner = Owner.find(params[:id])
  end
  def owner_params
    unless params[:owner].blank?
      params.require(:owner).permit(:name, :address, :tlf, :mobile, :zip_code)
    end
  end
end
