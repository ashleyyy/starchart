class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user, index: true
      
      t.string :description, default: "set goals"
      t.date :due_date
      t.boolean :recurring, default: false
      t.boolean :completed, default: false
      t.boolean :postponed, default: false

      t.timestamps null: false
    end
  end
end
