class CreateFeedbacks < ActiveRecord::Migration
	def change
		create_table :feedbacks do |t|

			t.string :name,			null: false
			t.string :email,		null: false
			t.string :title
			t.text :message,		null: false
			t.string :target,			null: false

			t.timestamps
		end

	add_index :feedbacks, :email
	add_index :feedbacks, :target

	end
end
