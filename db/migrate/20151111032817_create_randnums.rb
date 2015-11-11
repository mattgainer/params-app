class CreateRandnums < ActiveRecord::Migration
  def change
    create_table :randnums do |t|
      t.integer :random_number

      t.timestamps null: false
    end
  end
end
