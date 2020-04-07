class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :team
      t.string :home_team
      t.string :away_team
      t.integer :home_sets
      t.integer :away_sets
      t.string :venue
      t.text :address
      t.string :score
      t.date :date
      t.time :time
      t.string :league

      t.timestamps
    end
  end
end
