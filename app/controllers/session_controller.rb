#create new session page
get '/sessions/new' do 
	erb :'/sessions/session_new'
end


#login to session
post '/sessions' do 
	user = User.find_by(email: params[:email])
	if user && user.password = params[:password]
		p "*********************************"
		session[:id] = user.id
		p session[:id]
		redirect '/'
	else
		status 400
		redirect '/sessions/new'
	end
end


#delete session
delete '/sessions/:id' do
	current_user = nil
	session[:id] = nil
end

