get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user_info])
  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = ["You messed it up, try again!"]
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id] )
 redirect '/users/new' unless session[:user_id] == @user.id
  erb :'/users/home'
end