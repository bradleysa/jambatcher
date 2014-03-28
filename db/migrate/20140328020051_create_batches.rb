class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.date :date
      t.string :variety
      t.string :fruit_source
      t.string :batch_number
      t.string :cooking_time
      t.string :yield_integer
      t.text :cooking_notes

      t.timestamps
    end
  end
end
