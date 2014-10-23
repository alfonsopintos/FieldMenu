class PagesController < ApplicationController

  def landing
    @clients = Client.all
  end

  def fields
    @fields = Field.all
  end

end
