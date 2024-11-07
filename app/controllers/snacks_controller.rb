class SnacksController < ApplicationController
  before_action :set_snack, only: %i[ show edit update destroy ]

  # GET /snacks
  def index
    @snacks = Snack.all
  end

  # GET /snacks/1
  def show
  end

  # GET /snacks/new
  def new
    @snack = Snack.new
  end

  # GET /snacks/1/edit
  def edit
  end

  # POST /snacks
  def create
    @snack = Snack.new(snack_params)

    if @snack.save
      redirect_to @snack, notice: "Snack was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /snacks/1
  def update
    if @snack.update(snack_params)
      redirect_to @snack, notice: "Snack was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /snacks/1
  def destroy
    @snack.destroy!
    redirect_to snacks_url, notice: "Snack was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snack
      @snack = Snack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def snack_params
      params.require(:snack).permit(:name, :calories)
    end
end
