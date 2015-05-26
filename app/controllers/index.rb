get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/chicken' do
  erb :chicken
end


get '/:vocab' do
  @anagram_list = Word.anagram(params[:vocab])
  erb :sorting

end
