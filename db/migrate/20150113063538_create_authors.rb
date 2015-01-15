class CreateAuthors < ActiveRecord::Migration
	def change
		create_table :authors do |t|
			t.string :photo
			t.string :name,			null: false, default: ""
			t.text :about,			null: false, default: ""

			t.timestamps
		end
	end
end
