class AddPhoneNumberFromRestaurants < ActiveRecord::Migration[6.1]
  def change
    remove_column :restaurants, :phone_number, :integer
    add_column :restaurants, :phone_number, :string
  end
end
