class DogsController < ApplicationController
  def create
    @dog = Dog.create(dog_params)
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

  def edit
    @dog = Dog.find(params[:id])
  end
  def show
    @dog = Dog.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def index
    @dogs = Dog.paginate(:page => params[:page], :per_page => 10)
  end
  def new
    @dog = Dog.new
  end
  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    flash[:notice] = "Dog was deleted successfully"
    redirect_to dogs_path
  end

  def update
    @dog = Dog.find(params[:id])
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
def dog_params
  unless params[:dog].blank?
    params.require(:dog).permit(:nickname, :name, :race, :born, :IDtagged, :allergies, :regnr, :photo)
  end
end
