class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.references :users, index: true
      t.references :jokes, index: true
      t.timestamps
    end
  end
end
