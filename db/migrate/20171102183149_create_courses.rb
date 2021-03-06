class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :body

      t.timestamps
    end

    add_index :courses, :title, unique: true
  end
end
