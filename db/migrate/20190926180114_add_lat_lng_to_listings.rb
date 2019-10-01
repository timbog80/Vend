class AddLatLngToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :lat, :decimal
    add_column :listings, :lng, :decimal
  end
end
