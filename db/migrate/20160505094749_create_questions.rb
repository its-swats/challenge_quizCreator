class CreateQuestions < ActiveRecord::Migration
  def change
  	create_table :questions do |t|
  		t.integer :strand_id
  		t.string :strand_name
  		t.integer :standard_id
  		t.string :standard_name
  		t.integer :question_id
  		t.float :difficulty
  	end
  end
end

