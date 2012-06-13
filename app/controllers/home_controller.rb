class HomeController < ApplicationController
  def index
  	@items1 = Item.withcid(50008165)
  end
end
