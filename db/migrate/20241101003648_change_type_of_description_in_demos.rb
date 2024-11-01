class ChangeTypeOfDescriptionInDemos < ActiveRecord::Migration[7.1]
  # Change column is not reversible, because that we use handle manually
  def up
    change_column :demos, :description, :text
  end

  def down
    change_column :demos, :description, :string
  end
end
