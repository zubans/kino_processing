class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :ticket_type, default: :pop
      t.references :session
      t.references :user

      t.timestamps
    end
  end
end
