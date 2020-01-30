class AddBreweriesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :breweries do |t|
      t.column :name, :string
      t.column :street, :string
      t.column :city, :string
      t.column :state, :string
      t.column :zip, :integer
      t.column :dog_friendly, :string
      t.column :outdoor, :string
      t.column :park_nearby, :string
    end
  end
end
