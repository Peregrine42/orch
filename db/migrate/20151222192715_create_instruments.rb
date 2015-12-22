class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :name
      t.text :description
      t.integer :amount
      t.integer :reserved
      t.decimal :price
    end
  end
end
