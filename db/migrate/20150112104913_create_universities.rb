class CreateUniversities < ActiveRecord::Migration
	def change
		create_table :universities do |t|
			t.string :name
			t.string :logo
			t.string :picture
			t.text :description
			t.text :short_description,			null: false, default: ""
			t.string :abbreviation,			null: false, default: ""

			t.timestamps
		end
	end
end