enable :sessions
use Rack::Flash

get '/' do

  erb :index
end
