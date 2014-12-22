class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|

    	t.string :name,			null: false, default: ""
    	t.string :email,		null: false, default: ""
    	t.string :message
    	t.string :target,			null: false, default: ""

    	t.timestamps
    end

	add_index :feedbacks, :email
    add_index :feedbacks, :target

  end
end
