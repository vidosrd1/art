class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  def index
    @articles = Article.all
    if params[:tag_id]
      Tag.find(id).articles
    else
      @articles = Article.all.order('created_at DESC')
    end
    @pagy, @articles = pagy(@articles)
    if params[:query].present?
      @articles = Article.where("title LIKE ?", "%#{params[:query]}%")
    end

    if turbo_frame_request?
      render partial: "articles", locals: { articles: @articles }
    else
      render :index
    end
  rescue Pagy::OverflowError
    #redirect_to root_path(page: 1)
    params[:page] = 1
    retry
  end

  def tags
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
    if params[:tag]
      @articles = Article.tagged_with(params[:tag])
      @tag = @articles
    end
    #@related_articles = Article.tagged_with(
    #  @article.tag_lists, any: true)
  end

  def new
    @article = Article.new
    @tags = Tag.all
    #@tags = Tag.find(:all)
    taggable = @article.taggables.build()
    #article_tag = @article.article_tags.build()
    #@taggables = @article.tags.all
    @article.taggables.build.build_tag
    3.times do
      @taggables = @article.taggables.build()
      #article_tag = @article.article_tags.build()
    end
  end

  def search
  #  return nil if params[:keyword] == ""
  #  tag = Tag.where(['name LIKE ?',
  #    "%#{params[:keyword]}%"] )
  #  render json:{ keyword: tag }
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to article_url(@article), notice: "Article was successfully created." }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to article_url(@article), notice: "Article was successfully updated." }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article.destroy!

    respond_to do |format|
      format.html { redirect_to articles_url, notice: "Article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def upvote
    @article.upvote_by current_user
    redirect_to :back
  end

  def downvote
    @article.downvote_by current_user
    redirect_to :back
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def venue_params
      params.require(:venue).permit(:name, :address, :discount, :latitude, :longitude, :tags_attributes =>[:name],:tag_ids => [])
    end
    def find_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(
        :title, :name, :image, :body,
        :publish, pictures: []
      ).with_defaults(user: current_user)
    end

    def current_user
      User.first
    end
end
