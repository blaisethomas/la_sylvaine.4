class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :user, index: true
      t.decimal :amount

      t.timestamps
    end
  end
end
