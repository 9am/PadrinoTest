class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :cover_url
      t.string :background_url
      t.string :swf_url

      t.timestamps
    end
  end
end
