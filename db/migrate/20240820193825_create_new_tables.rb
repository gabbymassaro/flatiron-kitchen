class CreateNewTables < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name

      t.timestamps
    end

    create_table :ingredients do |t|
      t.string :name
      t.references :recipe

      t.timestamps
    end
  end
end
