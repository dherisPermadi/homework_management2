class CreateHomeworks < ActiveRecord::Migration[5.1]
  def change
    create_table :homeworks do |t|
      t.text :homework_name
      t.string :category
      t.date :deadline
      t.text :description

      t.timestamps
    end
  end
end
