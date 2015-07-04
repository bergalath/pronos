class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :country
      t.string :local_color
      t.string :external_color

      t.timestamps null: false
    end
  end
end
