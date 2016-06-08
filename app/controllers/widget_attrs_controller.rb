class WidgetAttrsController < ApplicationController
  before_action :set_widget_attr, only: [:show, :edit, :update, :destroy]

  # GET /widget_attrs
  # GET /widget_attrs.json
  def index
    @widget_attrs = WidgetAttr.all
  end

  # GET /widget_attrs/1
  # GET /widget_attrs/1.json
  def show
  end

  # GET /widget_attrs/new
  def new
    @widget_attr = WidgetAttr.new
  end

  # GET /widget_attrs/1/edit
  def edit
  end

  # POST /widget_attrs
  # POST /widget_attrs.json
  def create
    @widget_attr = WidgetAttr.new(widget_attr_params)

    respond_to do |format|
      if @widget_attr.save
        format.html { redirect_to @widget_attr, notice: 'Widget attr was successfully created.' }
        format.json { render :show, status: :created, location: @widget_attr }
      else
        format.html { render :new }
        format.json { render json: @widget_attr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /widget_attrs/1
  # PATCH/PUT /widget_attrs/1.json
  def update
    respond_to do |format|
      if @widget_attr.update(widget_attr_params)
        format.html { redirect_to @widget_attr, notice: 'Widget attr was successfully updated.' }
        format.json { render :show, status: :ok, location: @widget_attr }
      else
        format.html { render :edit }
        format.json { render json: @widget_attr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /widget_attrs/1
  # DELETE /widget_attrs/1.json
  def destroy
    @widget_attr.destroy
    respond_to do |format|
      format.html { redirect_to widget_attrs_url, notice: 'Widget attr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_widget_attr
      @widget_attr = WidgetAttr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def widget_attr_params
      params.require(:widget_attr).permit(:windget_id, :name, :value, :type)
    end
end
