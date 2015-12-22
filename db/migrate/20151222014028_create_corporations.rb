class CreateCorporations < ActiveRecord::Migration
  def change
    create_table :corporations do |t|
      t.string :name
      t.string :address
      t.string :avatar
      t.string :industry
      t.string :phone_number
      t.string :web_site

      t.timestamps
    end
  end
end
