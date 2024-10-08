class ChaptersController < ApplicationController
  before_action :set_chapter, only: %i[ show edit update destroy ]

  # GET /chapters or /chapters.json
  def index
    @chapters = Chapter.all
  end

  # GET /chapters/1 or /chapters/1.json
  def show
  end

  # GET /chapters/new
  def new
    @chapter = Novel.find(params[:novel_id]).chapters.build
  end

  # GET /chapters/1/edit
  def edit
  end

  # POST /chapters or /chapters.json
  def create
    @chapter = Chapter.new(chapter_params)
    @novel = @chapter.novel
    @chapter.number = @novel.chapters.count + 1

    respond_to do |format|
      if @chapter.save
        format.html { redirect_to novel_url(@novel), notice: "Chapter was successfully created." }
        format.json { render :show, status: :created, location: @chapter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapters/1 or /chapters/1.json
  def update
    respond_to do |format|
      if @chapter.update(chapter_params)
        format.html { redirect_to chapter_url(@chapter), notice: "Chapter was successfully updated." }
        format.json { render :show, status: :ok, location: @chapter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapters/1 or /chapters/1.json
  def destroy
    @chapter.destroy!

    respond_to do |format|
      format.html { redirect_to chapters_url, notice: "Chapter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapter
      @chapter = Chapter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chapter_params
      params.require(:chapter).permit(:title, :body, :novel_id)
    end
end
