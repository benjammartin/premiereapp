class Course < ActiveRecord::Base
  belongs_to :user
   has_many :topics
  has_many :steps
  attr_accessible :name, :user_id
end
