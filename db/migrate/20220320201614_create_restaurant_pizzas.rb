class CreateRestaurantPizzas < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_pizzas do |t|
      t.belongs_to :pizza, null: false, foreign_key: true
      t.belongs_to :restaurant, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
