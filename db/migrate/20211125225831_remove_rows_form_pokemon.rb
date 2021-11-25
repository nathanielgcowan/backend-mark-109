class RemoveRowsFormPokemon < ActiveRecord::Migration[6.1]
  def change
    remove_column :pokemons, :number
    remove_column :pokemons, :ability
    add_column :pokemons, :image, :string
    add_column :pokemons, :type, :string
  end
end
