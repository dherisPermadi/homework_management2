class AddCategoryIdToHomework < ActiveRecord::Migration[5.1]
  def change
    add_column :homeworks, :category_id, :integer
  end
end
