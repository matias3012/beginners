class BeginnersController < ApplicationController
  before_action :set_beginner, only: [:show, :edit, :update, :destroy]

  # GET /beginners
  # GET /beginners.json
  def index
    @beginners = Beginner.all
  end

  # GET /beginners/1
  # GET /beginners/1.json
  def show
    @new_comment = @beginner.comments.new
  end

  # GET /beginners/new
  def new
    @beginner = Beginner.new
  end

  # GET /beginners/1/edit
  def edit
  end

  # POST /beginners
  # POST /beginners.json
  def create
    @beginner = Beginner.new(beginner_params)

    respond_to do |format|
      if @beginner.save
        format.html { redirect_to @beginner, notice: 'Beginner was successfully created.' }
        format.json { render :show, status: :created, location: @beginner }
      else
        format.html { render :new }
        format.json { render json: @beginner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beginners/1
  # PATCH/PUT /beginners/1.json
  def update
    respond_to do |format|
      if @beginner.update(beginner_params)
        format.html { redirect_to @beginner, notice: 'Beginner was successfully updated.' }
        format.json { render :show, status: :ok, location: @beginner }
      else
        format.html { render :edit }
        format.json { render json: @beginner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beginners/1
  # DELETE /beginners/1.json
  def destroy
    @beginner.destroy
    respond_to do |format|
      format.html { redirect_to beginners_url, notice: 'Beginner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beginner
      @beginner = Beginner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beginner_params
      params.require(:beginner).permit(:title, :element, :author)
    end
end
