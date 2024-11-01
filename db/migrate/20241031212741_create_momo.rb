class CreateMomo < ActiveRecord::Migration[7.1]
  def change
    create_table :momos do |t|
      t.string :name

      t.timestamps
    end
  end
end
