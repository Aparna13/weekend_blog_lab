class Post < ActiveRecord::Base
  belongs_to :author
  
  validates_presence_of :title, :body, :category
  validates_length_of :title, minimum: 3
end
