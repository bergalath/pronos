class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :competition_id
      t.integer :local_id
      t.integer :visitor_id
      t.integer :local_score
      t.integer :visitor_score
      t.datetime :begin_at

      t.timestamps null: false
    end
  end
end
