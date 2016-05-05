class Quiz
	attr_reader :final_quiz

	def initialize(questions, sort= "strand_id")
		@final_quiz = []
		@total_questions = questions
		populate_questions
		sort_by(sort)
	end  

	def populate_questions
		strand_1 = Question.where(strand_id: 1)
		strand_2 = Question.where(strand_id: 2)
		strand_1_types = {1 => 0, 2 => 0, 3 => 0}
		strand_2_types = {4 => 0, 5 => 0, 6 => 0}

		#this should be broken out into another method and DRY'd up
		@total_questions.times do |x|
			if ((x+1) % 2) == 0 
				standard_to_add = strand_2_types.min_by{|key, value| value}
				current_selection = strand_2.where(standard_id: standard_to_add[0])
				@final_quiz << current_selection.sample
				strand_2_types[standard_to_add[0]] += 1
			else
				standard_to_add = strand_1_types.min_by{|key, value| value}
				current_selection = strand_1.where(standard_id: standard_to_add[0])
				@final_quiz << current_selection.sample
				strand_1_types[standard_to_add[0]] += 1
			end
		end
	end

	def sort_by(type)
		@final_quiz.sort_by!{|hash| hash[type]}
	end

	def average_difficulty
		# should be using inject here, will convert if time allows
		average = 0
		@final_quiz.each {|question| average += question.difficulty }
		(average / @final_quiz.length).round(2)
	end

end
