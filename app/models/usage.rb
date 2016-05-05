class Usage < ActiveRecord::Base
  has_one :answered_question, class_name: 'Question', foreign_key: :question_id
end
