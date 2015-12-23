class AddInstrumentDefaults < ActiveRecord::Migration
  def change
    change_column_default :instruments, :amount, 0
    change_column_default :instruments, :reserved, 0
  end
end
