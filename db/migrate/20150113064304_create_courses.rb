class CreateCourses < ActiveRecord::Migration
	def change
		create_table :courses do |t|
			t.string :name,			null: false, default: ""
			t.references :university
			t.string :code,			null: false, default: ""
			t.datetime :date_begin,			null: false, default: 0
			t.string :duration_course,			null: false, default: ""
			t.string :hours_per_week,			null: false, default: ""
			t.string :picture
			t.string :title
			t.string :about,			null: false, default: ""
			t.string :notes
			t.integer :limit,			null: false, default: 0
			t.boolean :free,			:default => true

			t.timestamps
		end

		add_index :courses, :name
		add_index :courses, :date_begin
		add_index :courses, :free
	end
end