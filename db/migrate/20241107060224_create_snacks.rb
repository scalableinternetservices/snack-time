class CreateSnacks < ActiveRecord::Migration[7.2]
  def change
    create_table :snacks do |t|
      t.string :name
      t.integer :calories

      t.timestamps
    end
  end
end
