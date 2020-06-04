class CreatePhysicians < ActiveRecord::Migration[5.2]
  def change
    create_table :physicians do |t|
      t.string :name
      t.string :username
      t.string :specialty
      t.integer :years_practicing
    end
  end
end
