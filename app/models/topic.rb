class Topic < ActiveRecord::Base
  belongs_to :course
  has_many :steps
  attr_accessible :name, :course_id
end
