class SnippetsController < ApplicationController
  
  def new
    @snippet = Snippet.new
  end
  
  def find_by_unique_url
    @unique_url = unique_url
  end
  
  def create
    @snippet = current_user.snippets.build(snippet_params)
    if @snippet.save
      redirect_to root_path, notice: "Snippet created"
    else
      render :new
    end
  end

  def edit
  end

  def show
    @snippet = Snippet.find(params[:id])
  end
  
  def index
    @snippets = Snippet.all
    @user_snippets = current_user.snippets
  end
  
  private
  
    def snippet_params
      params.require(:snippet).permit(:title, :tag, :description, :weight, :content)
    end
  
end
