class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user, index: true
      
      t.string :description
      t.date :due_date
      t.boolean :recurring
      t.boolean :completed
      t.boolean :postponed

      t.timestamps null: false
    end
  end
end
