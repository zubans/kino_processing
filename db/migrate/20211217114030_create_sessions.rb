class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.datetime :s_time
      t.references :film

      t.timestamps
    end
  end
end