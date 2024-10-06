class CatsController < ApplicationController
  before_action :set_cat, only: %i[ show edit update destroy ]

  def index
    @cats = Cat.all
    @pagy, @cats = pagy(@cats)
    if params[:query].present?
      @cats = Cat.where("name LIKE ?", "%#{params[:query]}%")
    end

    if turbo_frame_request?
      render partial: "cats",
      locals: { cats: @cats }
    else
      render :index
    end

  rescue Pagy::OverflowError
    #redirect_to root_path(page: 1)
    params[:page] = 1
    retry
  end

  def show
  end

  def new
    @cat = Cat.new
  end

  def edit
  end

  def create
    @cat = Cat.new(cat_params)

    respond_to do |format|
      if @cat.save
        format.html { redirect_to cat_url(@cat), notice: "Cat was successfully created." }
        format.json { render :show, status: :created, location: @cat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cat.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cat.update(cat_params)
        format.html { redirect_to cat_url(@cat), notice: "Cat was successfully updated." }
        format.json { render :show, status: :ok, location: @cat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cat.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cat.destroy!

    respond_to do |format|
      format.html { redirect_to cats_url, notice: "Cat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_cat
      @cat = Cat.find(params[:id])
    end

    def cat_params
      params.require(:cat).permit(:name)
    end
end
