class CreateUsages < ActiveRecord::Migration
  def change
  	create_table :usages do |t|
  		t.integer :student_id
  		t.integer :question_id
  		t.integer :assigned_hours_ago
  		t.integer :answered_hours_ago
  	end
  end
end

