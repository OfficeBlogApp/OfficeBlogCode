class AdminArticlesController < ApplicationController
  before_action :set_admin_article, only: [:show, :edit, :update, :destroy]

  # GET /admin_articles
  # GET /admin_articles.json
  def index
    @admin_articles = Article.all
  end

  # GET /admin_articles/1
  # GET /admin_articles/1.json
  def show
  end

  # GET /admin_articles/new
  def new
    @admin_article = Article.new
  end

  # GET /admin_articles/1/edit
  def edit
  end

  # POST /admin_articles
  # POST /admin_articles.json
  def create
    @admin_article = Article.new(admin_article_params)

    respond_to do |format|
      if @admin_article.save
        format.html { redirect_to @admin_article, notice: 'Admin article was successfully created.' }
        format.json { render :show, status: :created, location: @admin_article }
      else
        format.html { render :new }
        format.json { render json: @admin_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_articles/1
  # PATCH/PUT /admin_articles/1.json
  def update
    respond_to do |format|
      if @admin_article.update(admin_article_params)
        format.html { redirect_to @admin_article, notice: 'Admin article was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_article }
      else
        format.html { render :edit }
        format.json { render json: @admin_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_articles/1
  # DELETE /admin_articles/1.json
  def destroy
    @admin_article.destroy
    respond_to do |format|
      format.html { redirect_to admin_articles_url, notice: 'Admin article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_article
      @admin_article = AdminArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_article_params
      params[:admin_article]
    end
end
