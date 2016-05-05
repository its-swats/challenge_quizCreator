get '/quiz' do
	@questions = Quiz.new(params['questions'].to_i)
	erb :index
end