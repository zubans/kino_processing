class CreateTrailers < ActiveRecord::Migration[6.1]
  def change
    create_table :trailers do |t|
      t.references :film, foreign_key: true
      t.string :from_date
      t.string :to_date

      t.timestamps
    end
  end
end
