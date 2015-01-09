class AddColumnToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :joke, index: true
    add_foreign_key :comments, :jokes
  end
end
