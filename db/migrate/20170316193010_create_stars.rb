class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.references :user, index: true
      t.references :task, index: true

      t.integer :x_cord
      t.integer :y_cord

      t.timestamps null: false
    end
  end
end
