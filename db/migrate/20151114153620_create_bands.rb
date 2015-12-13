class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.integer :user_id
      t.string :name
      t.string :city
      t.text :bio
      t.timestamps
    end

    create_table :venues do |t|
      t.integer :user_id
      t.string :name
      t.string :city
      t.string :year
      t.timestamps
    end

    create_table :concerts do |t|
      t.belongs_to :band, index: true
      t.belongs_to :venue, index: true
      t.datetime :concertdate
      t.integer :user_id
      t.timestamps
    end

  end
end

#use band.venues=venues
#or use venue.bands=bands
