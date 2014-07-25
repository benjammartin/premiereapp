class ContentController < ApplicationController
  before_filter :authenticate_user!
  
  def rails
    authorize! :view, :rails, :message => 'Access limited to Silver Plan subscribers.'
  end
  
end