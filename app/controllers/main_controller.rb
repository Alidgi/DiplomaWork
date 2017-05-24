class MainController < ApplicationController
  before_action :set_element, only: [:show]

  def index
    @elements = Element.all
    @element_attributies = ElementAttribute.all
  end

  def show
  end

  def set_article
    @element = Element.find(params[:id])
    @element_attribute = ElementAttribute.find(params[:id])
  end
end
