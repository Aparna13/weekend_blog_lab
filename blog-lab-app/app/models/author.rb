class Author < ActiveRecord::Base
  has_many :posts

  validates_length_of :first_name, :last_name, minimum: 4, maximum: 20
  validates_numericality_of :age
end
