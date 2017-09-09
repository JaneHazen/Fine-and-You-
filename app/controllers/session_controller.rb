get '/sessions/new' do
  if request.xhr?
    p "*" * 100
    status 200
    erb :'sessions/_new', layout: false
  else
    erb :'sessions/new'
  end
end

post '/sessions' do
  @user = User.find_by(user_name: params[:user_name])
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = ["Invalid username or password"]
    erb :'sessions/new'
  end
end

delete '/logout' do
  session[:user_id] = nil
  redirect 'sessions/new'
end