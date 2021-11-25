class RemoveTypeFromPokemon < ActiveRecord::Migration[6.1]
  def change
    remove_column :pokemons, :type
    add_column :pokemons, :pokemontype, :string
  end
end
