class Step < ActiveRecord::Base
  belongs_to :topic
  belongs_to :course
  belongs_to :user
  attr_accessible :aide, :description, :name, :support, :video, :course_id, :user_id, :topic_id

extend FriendlyId
  friendly_id :name, use: :slugged

  def should_generate_new_friendly_id?
    new_record?
  end


def next_step
  self.class.where("created_at < ?", created_at).reorder("created_at desc").first 
end


end


class Step < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :history
end