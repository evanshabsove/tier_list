class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :amount
      t.integer :item_id
      t.timestamps
    end
  end
end
