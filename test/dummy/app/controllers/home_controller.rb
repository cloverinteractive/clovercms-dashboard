class HomeController < ApplicationController
  def index
    %w(error warning success).each do |status|
      flash[status] = "This is how #{status} messages look like."
    end
  end
end