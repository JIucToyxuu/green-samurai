class CreateNews < ActiveRecord::Migration
	def change
		create_table :news do |t|
			t.string :title,			null: false, default: ""
			t.string :logo
			t.string :picture
			t.text :description,			null: false, default: ""

			t.timestamps
		end
	end
end
