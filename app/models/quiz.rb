class Quiz
	attr_reader :final_quiz

	def initialize(questions, sort= "strand_id")
		@final_quiz = []
		@total_questions = questions
		@strand_1 = Question.where(strand_id: 1)
		@strand_2 = Question.where(strand_id: 2)
		@difficulty = nil
		populate_questions
		sort_by(sort)
		# question_ids
	end  

  def populate_questions
		@total_questions.times do |x|
		 ((x+1) % 2 == 0) ? @final_quiz << @strand_2.sample : @final_quiz << @strand_1.sample
		end
	end	

	def sort_by(type)
		@final_quiz.sort_by!{|hash| hash[type]}
	end

	# def question_ids
	# 	@final_quiz.each do |question|
	# 		p question.question_id
	# 	end
	# end

end
