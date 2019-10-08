class LandingController < ApplicationController
  def index
    @articles = Article.all
    @authors = Author.all
  end

  # def index
  #   
  # end
end
