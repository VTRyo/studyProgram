class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :product, foreign_key: true
      t.string :user
      t.integer :rating
      t.text :body

      t.timestamps
    end
  end
end
