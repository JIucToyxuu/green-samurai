class AddShortsDescriptionAndAbbreviationToUniversity < ActiveRecord::Migration
  def change
    add_column :universities, :abbreviation, :string
    add_column :universities, :short_description, :string
  end
end
