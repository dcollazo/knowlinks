class LinksController < ApplicationController
  def new
    @link = Link.new
  end

  def create
    @link = current_user.links.build(link_params)
    if @link.save 
      redirect_to root_path, notice: "Link added"
    else
      flash[:error] = "Invalid link"
      render :new
    end
  end

  def update
    if @link.update_attributes(user_params)
      flash[:success] = "Link updated"
      redirect_to links_path
    end
  end
  
  def show
    @link = Link.find(params[:id])
  end
  
  def index
    @links = Link.all
    @user_links = current_user.links
  end

  private

    def link_params
      params.require(:link).permit(:title, :url, :tag, :description, :owner_id, :month_year, :link_image)
    end

end
