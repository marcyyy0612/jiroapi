class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :update, :destroy]

  # GET /foods
  def index
    @foods = Food.all

    render json: @foods
  end

  def search_genre
    genre = params[:genre_id]
    return render json: {error: "genreを設定してください"}.to_json unless genre.present?
    @foods = Food.where(genre: genre)

    render json: @foods
  end

  def starter_list
    starter_2000 = [
                    Food.find_by(name: "庶民のにんにく"),
                    Food.find_by(name: "庶民の豚"),
                    Food.find_by(name: "庶民のもやし"),
                    Food.find_by(name: "庶民の醤油"),
                    Food.find_by(name: "庶民の麺")
                   ]
    starter_5000 = [
                    Food.find_by(name: "一般のにんにく"),
                    Food.find_by(name: "一般の豚"),
                    Food.find_by(name: "一般のもやし"),
                    Food.find_by(name: "一般の醤油"),
                    Food.find_by(name: "一般の麺")
                   ]

    starter_10000 = [
                    Food.find_by(name: "高級なにんにく"),
                    Food.find_by(name: "高級な豚"),
                    Food.find_by(name: "高級なもやし"),
                    Food.find_by(name: "高級な醤油"),
                    Food.find_by(name: "高級な麺")
                   ]
    render json: {
                  starter_2000: starter_2000,
                  starter_5000: starter_5000,
                  starter_10000: starter_10000
                 }.to_json
  end

  # GET /foods/1
  def show
    render json: @food
  end

  # POST /foods
  def create
    @food = Food.new(food_params)

    if @food.save
      render json: @food, status: :created, location: @food
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /foods/1
  def update
    if @food.update(food_params)
      render json: @food
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # DELETE /foods/1
  def destroy
    @food.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def food_params
      params.fetch(:food, {})
    end
end
