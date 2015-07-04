class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.string :country
      t.integer :year

      t.timestamps null: false
    end
  end
end
