class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :author
      t.text :body

      t.timestamps
    end
  end
end
