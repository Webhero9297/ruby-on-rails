class CreatePhotourls < ActiveRecord::Migration[5.0]
  def change
    create_table :photourls do |t|
      t.string :csv_id
      t.text :photo_url

      t.timestamps
    end
  end
end
