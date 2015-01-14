class CreateTeachers < ActiveRecord::Migration
	def change
		create_table :teachers do |t|
			t.references :courses
			t.references :authors

			t.timestamps
		end
	end
end
