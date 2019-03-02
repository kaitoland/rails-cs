class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.date :contact_date
      t.string :staff
      t.string :title
      t.string :status
      t.string :category
      t.string :summary
      t.string :plan

      t.timestamps
    end
  end
end
