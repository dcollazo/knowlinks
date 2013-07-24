class SnippetLinksController < ApplicationController
  private
  
    def snippetlinks_params
      params.require(:snippet_link).permit(:title)
    end
end
