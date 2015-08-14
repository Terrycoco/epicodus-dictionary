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

get('/word_defs/:wordstr') do
  wordstr = params.fetch('wordstr')
  @word = Word.find(wordstr)
  erb(:word_defs)
end

post('/add_def/:wordstr') do
  wordstr = params.fetch('wordstr')
  word = Word.find(wordstr)
  word_type = params.fetch('word_type')
  new_def = params.fetch('new_def')
  @newdef = Definition.new(word_type, new_def)
  word.add_def(@newdef)
  @word = word
  erb(:word_defs)
end
