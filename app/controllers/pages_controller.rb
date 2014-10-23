class PagesController < ApplicationController

  def landing
    @clients = Client.all
    @fields = Field.all
  end

  def fields
    @fields = Field.all
  end

  def info

  end

end
