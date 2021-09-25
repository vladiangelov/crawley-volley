class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :training_day
      t.string :additional_info
      t.string :training_time
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
