class Installation < ActiveRecord::Base
  attr_accessible :aide, :description, :name, :support, :video

extend FriendlyId
  friendly_id :name, use: :slugged

  def should_generate_new_friendly_id?
    new_record?
  end



end


class Installation < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :history
end
