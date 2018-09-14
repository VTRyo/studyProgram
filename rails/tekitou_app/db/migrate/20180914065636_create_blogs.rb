class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :word
      t.string :writer

      t.timestamps
    end
  end
end
