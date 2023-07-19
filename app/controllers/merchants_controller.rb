class MerchantsController < ApplicationController
  def index
    @facade = EngineFacade.new.get_merchants
  end
end