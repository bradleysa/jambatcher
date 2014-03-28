class YieldIsInteger < ActiveRecord::Migration
  def change     
  	    add_column :batches, :yield, :integer
  	    remove_column :batches, :yield_integer
  end
end
