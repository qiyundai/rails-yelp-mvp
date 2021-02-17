class RemovePhoneNumberFromRestaurants < ActiveRecord::Migration[6.1]
  def change
    remove_column :restaurants, :phone_number, :string
    remove_column :restaurants, :catagory, :string
    add_column :restaurants, :phone_number, :integer
    add_column :restaurants, :category, :string
  end
end
