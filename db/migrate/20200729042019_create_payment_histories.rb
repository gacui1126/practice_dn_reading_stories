class CreatePaymentHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :payment_histories do |t|
      t.integer :user_id
      t.integer :story_id
      t.timestamp :date_created

      t.timestamps
    end
  end
end
