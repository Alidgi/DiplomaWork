class ElementAttributesController < ApplicationController
  before_action :set_element_attribute, only: [:show, :edit, :update, :destroy]

  # GET /element_attributes
  # GET /element_attributes.json
  def index
    @element_attributes = ElementAttribute.all
  end

  # GET /element_attributes/1
  # GET /element_attributes/1.json
  def show
  end

  # GET /element_attributes/new
  def new
    @element_attribute = ElementAttribute.new
  end

  # GET /element_attributes/1/edit
  def edit
  end

  # POST /element_attributes
  # POST /element_attributes.json
  def create
    @element_attribute = ElementAttribute.new(element_attribute_params)

    respond_to do |format|
      if @element_attribute.save
        format.html { redirect_to @element_attribute, notice: 'Element attribute was successfully created.' }
        format.json { render :show, status: :created, location: @element_attribute }
      else
        format.html { render :new }
        format.json { render json: @element_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /element_attributes/1
  # PATCH/PUT /element_attributes/1.json
  def update
    respond_to do |format|
      if @element_attribute.update(element_attribute_params)
        format.html { redirect_to @element_attribute, notice: 'Element attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @element_attribute }
      else
        format.html { render :edit }
        format.json { render json: @element_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /element_attributes/1
  # DELETE /element_attributes/1.json
  def destroy
    @element_attribute.destroy
    respond_to do |format|
      format.html { redirect_to element_attributes_url, notice: 'Element attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_element_attribute
      @element_attribute = ElementAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def element_attribute_params
      params.require(:element_attribute).permit(:attribute_id, :element_id)
    end
end
