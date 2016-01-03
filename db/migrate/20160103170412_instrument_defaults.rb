class InstrumentDefaults < ActiveRecord::Migration
  def change
    change_column_default :instruments, :price, 0
    change_column_default :instruments, :name, "Untitled"
    change_column_default( 
      :instruments, 
      :description, 
      "No description"
    )
  end
end
