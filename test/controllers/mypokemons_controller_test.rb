require "test_helper"

class MypokemonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mypokemon = mypokemons(:one)
  end

  test "should get index" do
    get mypokemons_url, as: :json
    assert_response :success
  end

  test "should create mypokemon" do
    assert_difference('Mypokemon.count') do
      post mypokemons_url, params: { mypokemon: { image: @mypokemon.image, name: @mypokemon.name, pokemontype: @mypokemon.pokemontype } }, as: :json
    end

    assert_response 201
  end

  test "should show mypokemon" do
    get mypokemon_url(@mypokemon), as: :json
    assert_response :success
  end

  test "should update mypokemon" do
    patch mypokemon_url(@mypokemon), params: { mypokemon: { image: @mypokemon.image, name: @mypokemon.name, pokemontype: @mypokemon.pokemontype } }, as: :json
    assert_response 200
  end

  test "should destroy mypokemon" do
    assert_difference('Mypokemon.count', -1) do
      delete mypokemon_url(@mypokemon), as: :json
    end

    assert_response 204
  end
end
