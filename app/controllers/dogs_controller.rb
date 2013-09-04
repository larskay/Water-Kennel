class DogsController < ApplicationController
  before_action :find_dog, only: [ :edit, :destroy, :update, :show ]
  before_action :find_owner, only: [:new, :destroy, :update, :create ]
  before_action :find_dogs, only: [:create, :new ]
  

  def create
    @dog = @owner.dogs.build(dog_params)
    @uploader = PhotoUploader.new
    @uploader.store!(dog_params[:photo])

    if @dog.save
      flash[:notice] = "Dog was saved successfully"
      redirect_to @dog
    else
      flash[:error] = "Dog was not created"
      render :action => 'new'
    end
  end
  def new
    @dog = @owner.dogs.build
  end

  def edit
  end

  def show
  end

  def index
    @dogs = Dog.paginate(:page => params[:page], :per_page => 10)
  end
  def new
    @dog = @owner.dogs.build
  end
  def destroy
    @owner.destroy
    flash[:notice] = "Dog was deleted successfully"
    redirect_to dogs_path
  end

  def update
    if @dog.update_attributes(dog_params)
      flash[:notice] = "Dog was updated successfully"
      redirect_to @dog
    else
      flash[:error] = "Dog was not updated"
      render action: 'edit'
    end
  end
end
private
def find_dog
  @dog = Dog.find(params[:id])
end
def find_owner
  @owner = Owner.find(params[:owner_id])
end
def find_dogs
  @dog = @owner.dogs.find_by_id(params[:owner_id])
end

def dog_params
  unless params[:dog].blank?
    params.require(:dog).permit(:nickname, :name, :race, :born, :IDtagged, :allergies, :regnr, :photo, :owner_id)
  end
end
