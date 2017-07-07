require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require('./lib/word')

  get('/') do
    erb(:index)
  end

  get('/words') do
    @words = Word.all()
    erb(:words)
  end

  get('/words/new') do
    erb(:words_form)
  end

  post('/words') do
    word = params.fetch('word')
    @word= Word.new({:word=> word})
    @word.save()
    erb(:success)
  end

  get('/words/:id') do
    @word = Word.find(params.fetch("id"))
    erb(:word)
  end
