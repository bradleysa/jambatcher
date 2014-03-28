class YieldIsInJars < ActiveRecord::Migration
  def change
  	add_column :batches, :four_oz_yield, :integer
  	add_column :batches, :eight_oz_yield, :integer
  	remove_column :batches, :yield
  end
end
