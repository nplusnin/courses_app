class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.belongs_to :course, foreign_key: true
      t.string :title
      t.text :body
      t.string :you_tube_link

      t.timestamps
    end

    add_index :lessons, [:course_id, :title], unique: true
  end
end
