class AddSubCategoryIdToHomework < ActiveRecord::Migration[5.1]
  def change
    add_column :homeworks, :sub_category_id, :integer
  end
end
