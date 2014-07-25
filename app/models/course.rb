class Course < ActiveRecord::Base
  belongs_to :user
   has_many :topics
  has_many :steps
  attr_accessible :name, :user_id


  extend FriendlyId
  friendly_id :name, use: :slugged

  def should_generate_new_friendly_id?
    new_record?
  end



end


class Course < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :history
end