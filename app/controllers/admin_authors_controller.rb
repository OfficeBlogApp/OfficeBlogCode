class AdminAuthorsController < ApplicationController
  before_action :set_admin_author, only: [:show, :edit, :update, :destroy]

  # GET /admin_authors
  # GET /admin_authors.json
  def index
    @admin_authors = Author.all
  end

  # GET /admin_authors/1
  # GET /admin_authors/1.json
  def show
  end

  # GET /admin_authors/new
  def new
    @admin_author = Author.new
  end

  # GET /admin_authors/1/edit
  def edit
  end

  # POST /admin_authors
  # POST /admin_authors.json
  def create
    @admin_author = Author.new(admin_author_params)

    respond_to do |format|
      if @admin_author.save
        format.html { redirect_to @admin_author, notice: 'Admin author was successfully created.' }
        format.json { render :show, status: :created, location: @admin_author }
      else
        format.html { render :new }
        format.json { render json: @admin_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_authors/1
  # PATCH/PUT /admin_authors/1.json
  def update
    respond_to do |format|
      if @admin_author.update(admin_author_params)
        format.html { redirect_to @admin_author, notice: 'Admin author was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_author }
      else
        format.html { render :edit }
        format.json { render json: @admin_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_authors/1
  # DELETE /admin_authors/1.json
  def destroy
    @admin_author.destroy
    respond_to do |format|
      format.html { redirect_to admin_authors_url, notice: 'Admin author was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_author
      @admin_author = Author.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_author_params
      params[:admin_author]
    end
end
