class AddCorporationToBillionaires < ActiveRecord::Migration
  def change
     add_column :billionaires, :corporation_id, :integer
  end
end
