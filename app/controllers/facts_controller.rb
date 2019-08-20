class FactsController < ApplicationController
  def index
  	@facts = Fact.retrieve(50)
  end
end
