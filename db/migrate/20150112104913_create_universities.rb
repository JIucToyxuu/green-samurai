class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :name
      t.string :logo
      t.string :picture
      t.string :description

      t.timestamps
    end
  end
end
