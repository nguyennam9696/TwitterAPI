get '/tweet/new' do
  erb :'tweet/new'
end

post '/tweet' do
  tweet(params[:tweet])
  redirect '/tweet/new'
end
