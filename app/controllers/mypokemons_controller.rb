class MypokemonsController < ApplicationController
  before_action :set_mypokemon, only: [:show, :update, :destroy]

  # GET /mypokemons
  def index
    @mypokemons = Mypokemon.all

    render json: @mypokemons
  end

  # GET /mypokemons/1
  def show
    render json: @mypokemon
  end

  # POST /mypokemons
  def create
    @mypokemon = Mypokemon.new(mypokemon_params)

    if @mypokemon.save
      render json: @mypokemon, status: :created, location: @mypokemon
    else
      render json: @mypokemon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mypokemons/1
  def update
    if @mypokemon.update(mypokemon_params)
      render json: @mypokemon
    else
      render json: @mypokemon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mypokemons/1
  def destroy
    @mypokemon.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mypokemon
      @mypokemon = Mypokemon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mypokemon_params
      params.require(:mypokemon).permit(:name, :image, :pokemontype)
    end
end
