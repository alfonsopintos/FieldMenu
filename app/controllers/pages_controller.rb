class PagesController < ApplicationController

  def landing
    @clients = Client.all
  end

end
