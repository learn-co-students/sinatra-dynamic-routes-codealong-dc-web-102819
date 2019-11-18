
require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end


  get '/multiply/:name1/:name2' do
  @num1 = params[:name1].to_i
  @num2 = params[:name2].to_i
  @product = @num1 * @num2   
  "#{@product}" 
  
  end 

 
  # Code your final two routes here:

end

# get '/goodbye/:name, a dynamic route that returns "Goodbye, (person's name).", a string. 
# For example, navigating to localhost:9393/goodbye/jerome should display Goodbye, jerome.

# A dynamic route starting with /multiply that accepts two params (num1 and num2) and returns 
# the product of the two numbers.