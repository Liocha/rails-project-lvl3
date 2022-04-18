class Web::HomeController < ApplicationController
  def index
    @bulletins = Bulletin.all
  end
end
