class CreateCommentaires < ActiveRecord::Migration[6.1]
  def change
    create_table :commentaires do |t|
      t.string :content
      t.belongs_to :user, foreign_key: true
      t.belongs_to :publication, foreign_key: true
      t.datetime :published_at
      t.timestamps
    end

  end
end
