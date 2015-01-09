require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/weekday_finder.rb')

get('/form') do
  erb(:form)
end

get('/submitted') do
   @self = params.fetch('self')
   @the_day = params.fetch('self').weekday()
  erb(:submitted)
end
