class CreateCourseUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :course_users do |t|
      t.belongs_to :course, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end

    add_index :course_users, [:course_id, :user_id], unique: true
  end
end
