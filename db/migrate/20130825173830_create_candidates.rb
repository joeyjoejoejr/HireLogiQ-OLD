class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string "name", null: false
      t.string "email", null: false
      t.string "github_name"
      t.string "avatar_url", null: false, default: "http://www.gravatar.com/avatar"

      t.timestamps
    end
  end
end
