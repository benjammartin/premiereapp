class Step < ActiveRecord::Base
  belongs_to :topic
  belongs_to :course
  belongs_to :user
  attr_accessible :aide, :description, :name, :support, :video, :course_id, :user_id, :topic_id



def next_step
  self.class.first(:conditions => ["name < ?", name], :order => "name desc")
end


end
