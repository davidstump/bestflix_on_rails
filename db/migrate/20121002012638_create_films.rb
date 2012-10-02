class CreateFilms < ActiveRecord::Migration
  def up
    create_table :films do |t|
      t.string :title
      t.integer :year
      t.boolean :winner

      t.timestamps
    end
  end

  def down
    drop_table :films
  end
end
