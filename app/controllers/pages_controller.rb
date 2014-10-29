class PagesController < ApplicationController

  def landing
    @clients = Client.all
    @fields = Field.all
  end

  def client_show
    @fields = Field.all
  end

  def info

  end

end
