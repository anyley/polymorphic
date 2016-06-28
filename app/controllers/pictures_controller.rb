class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]

  # GET /Pictures
  # GET /Pictures.json
  def index
    @pictures = Picture.all
  end

  # GET /Pictures/1
  # GET /Pictures/1.json
  def show
  end

  # GET /Pictures/new
  def new
    @picture = Picture.new
  end

  # GET /Pictures/1/edit
  def edit
  end

  # POST /Pictures
  # POST /Pictures.json
  def create
    @picture = Picture.new(picture_params)

    respond_to do |format|
      if @picture.save
        format.html { redirect_to @picture, notice: 'Text was successfully created.' }
        format.json { render :show, status: :created, location: @picture }
      else
        format.html { render :new }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Pictures/1
  # PATCH/PUT /Pictures/1.json
  def update
#    respond_to do |format|
      if @picture.update(picture_params)
        page = Page.find(params[:page])
        if page
          redirect_to edit_page_path(page)
        else
          respond_to do |format|
            format.html { redirect_to @picture, notice: 'Text was successfully updated.' }
            format.json { render :show, status: :ok, location: @picture }
          end
        end
      else
        respond_to do |format|
          format.html { render :edit }
          format.json { render json: @picture.errors, status: :unprocessable_entity }
        end
      end
#    end
  end

  # DELETE /Pictures/1
  # DELETE /Pictures/1.json
  def destroy
    @picture.destroy
    respond_to do |format|
      format.html { redirect_to pictures_url, notice: 'Text was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture
      @picture = Picture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def picture_params
      params.require(:picture).permit(:url)
    end
end
