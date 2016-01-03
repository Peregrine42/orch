class InstrumentNullChecks < ActiveRecord::Migration
  def change
    change_column_null :instruments, :amount, false
    change_column_null :instruments, :reserved, false
  end
end
