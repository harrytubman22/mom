class CreateBillionaires < ActiveRecord::Migration
  def change
    create_table :billionaires do |t|
      t.string :name
      t.string :address
      t.decimal :net_worth
      t.string :avatar
      t.string :industry

      t.timestamps
    end
  end
end
