class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.references :session
      t.references :ticket
      t.references :user
      t.column :status, :enum, limit: %i[booked saled refunded error]

      t.timestamps
    end
  end
end
