require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphynx')
require('pry')

get("/") do
  erb(:input)
end

post ("/output1") do
  @answer = params.fetch("riddle1")

  questions = Sphynx.new(@answer)
  if questions.riddle_one == true
    erb(:riddle2)
  else erb(:clue1)
  end
end

post ("/clue1") do
  @answer = params.fetch("riddle1")

  questions = Sphynx.new(@answer)
  if questions.riddle_one == true
    erb(:riddle2)
  else erb(:fail)
  end
end

post ("/output2") do
  @answer = params.fetch("riddle2")

  questions = Sphynx.new(@answer)
  if questions.riddle_two == true
    erb(:riddle3)
  else erb(:clue2)
  end
end

post ("/clue2") do
  @answer = params.fetch("riddle2")

  questions = Sphynx.new(@answer)
  if questions.riddle_two == true
    erb(:riddle3)
  else erb(:fail)
  end
end

post ("/output3") do
  @answer = params.fetch("riddle3")

  questions = Sphynx.new(@answer)
  if questions.riddle_three == true
    erb(:output)
  else erb(:clue3)
  end
end

post ("/clue3") do
  @answer = params.fetch("riddle3")

  questions = Sphynx.new(@answer)
  if questions.riddle_three == true
    erb(:output)
  else erb(:fail)
  end
end
