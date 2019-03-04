class CreateCsvServices < ActiveRecord::Migration[5.2]
  def change
    create_table :csv_services do |t|
      t.string :url

      t.timestamps
    end
  end
end
