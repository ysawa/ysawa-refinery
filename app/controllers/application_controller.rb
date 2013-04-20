class ApplicationController < ActionController::Base
  protect_from_forgery

  def local_request?
    Rails.env.development?
  end
end
