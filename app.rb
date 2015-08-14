require('sinatra')
require('sinatra/reloader')
require('./lib/definition.rb')
require('./lib/word.rb')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  @words = Word.all()
  erb(:index)
end

post('/add_word') do
  wordstr = params.fetch('new_word')
  new_word = Word.new(wordstr)
  Word.sort()
  @words = Word.all()
  erb(:index)
end
