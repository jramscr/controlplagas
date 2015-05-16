class CreatePaymentIncreases < ActiveRecord::Migration
  def change
    create_table :payment_increases do |t|
      t.integer :percentage
      t.string :frequency

      t.timestamps null: false
    end
  end
end
