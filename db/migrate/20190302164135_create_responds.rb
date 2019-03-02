class CreateResponds < ActiveRecord::Migration[5.2]
  def change
    create_table :responds do |t|
      t.integer :contact_id
      t.date :respond_date
      t.string :staff
      t.string :title
      t.string :point
      t.string :deal
      t.string :wording

      t.timestamps
    end
  end
end
