class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string :body
      t.references :user, index: true
    end
    add_foreign_key :jokes, :users
  end
end
