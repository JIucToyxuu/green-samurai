class CreatePupils < ActiveRecord::Migration
	def change
		create_table :pupils do |t|
			t.references :users
			t.references :courses

			t.timestamps
		end
	end
end
