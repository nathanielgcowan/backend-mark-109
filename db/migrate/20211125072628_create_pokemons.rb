class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :number
      t.string :ability

      t.timestamps
    end
  end
end
