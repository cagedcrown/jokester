class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.references :user, index: true
      # t.references :joke, index: true
    end
    add_foreign_key :comments, :users
    # add_foreign_key :comments, :jokes
  end
end
