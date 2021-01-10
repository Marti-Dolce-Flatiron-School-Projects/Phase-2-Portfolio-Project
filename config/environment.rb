# ENV['SINATRA_ENV'] ||= "development"

configure :development do
  set :show_exceptions, true
end

configure :production, :development do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')

  ActiveRecord::Base.establish_connection(
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
end

require './app/controllers/application_controller'
# require_all 'app'
