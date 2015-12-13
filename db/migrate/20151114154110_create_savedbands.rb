class CreateSavedbands < ActiveRecord::Migration
  def change
    create_table :savedbands do |t|
      t.integer :user_id
      t.integer :band_id

      t.timestamps

    end
  end
end
