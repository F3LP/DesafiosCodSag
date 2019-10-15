class HomeController < ActionController::Base
  def welcome
    render "/layouts/home"
  end
end
