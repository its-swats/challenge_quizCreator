get '/quiz' do
	if params['questions'].to_i > 0
		@questions = Quiz.new(params['questions'].to_i, params['sort'])
	else
		@errors = "Quizzes must contain at least one question."
	end
	erb :index
end