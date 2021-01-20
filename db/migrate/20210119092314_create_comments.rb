class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :story, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :comment_body, null: false
    end
  end
end
