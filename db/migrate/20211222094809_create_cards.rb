
class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.references :user, foreign_key: true
      t.string  :card_number
      t.string  :payment_type

      t.timestamps
    end
  end
end
