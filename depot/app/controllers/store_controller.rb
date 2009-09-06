class StoreController < ApplicationController
  def index
	@products = Product.find(:all,:order => "title")
  end

end
