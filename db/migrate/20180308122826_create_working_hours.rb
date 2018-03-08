class CreateWorkingHours < ActiveRecord::Migration[5.1]
  def change
    create_table :working_hours do |t|
      t.string :day
      t.string :from
      t.string :to
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
