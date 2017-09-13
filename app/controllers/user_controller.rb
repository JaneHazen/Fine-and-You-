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
      # scheduler = Rufus::Scheduler.new
      # scheduler.in '1s' do
      #   Input.new.send_greeting_text
      # end
      # scheduler.join
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

post '/users/:id' do
  @user = User.find(params[:id])
  @hours = params[:hours]
  @minutes = params[:minutes]
  @minutes ||= 0
  if params[:ampm].downcase == "pm"
    @hours = @hours += 12
  end
  # scheduler = Rufus::Scheduler.new
  # scheduler.cron "#{minutes} #{hours} * * *" do
  #   Input.new.send_text(@user.phone)
  # end
  # scheduler.join
  redirect '/users/home'
end

post '/users/:id/sms' do
  body = params['Body']
  @user = User.find(params[:id])
  @inputs = User.feels.all
  # Build response based on given body param
  twiml = Twilio::TwiML::MessagingResponse.new do |resp|
    if body.to_i
      @inputs << body.to_i
      resp.message 'Your input has been logged'
    else
      resp.message 'Please only send me numbers'
      Input.new.send_text
    end
  end

end