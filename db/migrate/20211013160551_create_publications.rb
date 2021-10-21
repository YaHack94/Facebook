class CreatePublications < ActiveRecord::Migration[6.1]
  def change
    create_table :publications do |t|
      t.string :content
      t.string :image
      t.belongs_to :user, foreign_key: true
      t.datetime :published_at
      t.timestamps
    end

  end
end
