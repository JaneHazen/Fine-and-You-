get '/users/new' do
  if request.xhr?
    p "*" * 100
    status 200
    erb :'users/_new', layout: false
  else
    erb :'users/new'
  end
end

post '/users' do
  @user = User.new(params[:user_info])
  if @user.save
    session[:user_id] = @user.id
    redirect "/"
  else
    @errors = ["You messed it up, try again!"]
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id] )
  @inputs = Input.find_by(user_id: params[:id])
  @feelings = @inputs.each do |input|
    @inputs.feel
  end
  @times = @inputs.each do |input|
    @inputs.created_at
  end
 redirect '/users/new' unless session[:user_id] == @user.id
  erb :'/users/home'
end