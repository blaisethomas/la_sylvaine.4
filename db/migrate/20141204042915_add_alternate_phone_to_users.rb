class AddAlternatePhoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :alternate_phone, :string
  end
end
