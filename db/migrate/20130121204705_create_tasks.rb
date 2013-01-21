class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :body
      t.boolean :done
      t.datetime :date

      t.timestamps
    end
  end
end
