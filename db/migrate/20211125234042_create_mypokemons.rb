class CreateMypokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :mypokemons do |t|
      t.string :name
      t.string :image
      t.string :pokemontype

      t.timestamps
    end
  end
end
