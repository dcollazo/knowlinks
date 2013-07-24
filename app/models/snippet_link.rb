class SnippetLink < ActiveRecord::Base
  belongs_to :snippet, :class_name "Snippet"
end
