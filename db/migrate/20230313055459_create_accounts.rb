class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.references :user , foreign_key: true
      t.decimal :balance
      t.string :account_number

      t.timestamps
    end
  end
end
