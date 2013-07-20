class LinksController < ApplicationController
  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save 
      redirect_to root_path, notice: "Link added"
    else
      flash[:error] = "Invalid link"
      render :new
    end
  end
  
  def show
  end
  
  def index
    @links = Link.all
  end
  
  def destroy
  end

  private
    def link_params
      params.require(:link).permit(:title, :url, :tag, :description)
    end

end
