require 'rack'
require 'pry'

class Application

  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, greeting ]
  end

  def greeting
    Time.now.hour < 12 ? ["<p>Good Morning!</p><p>#{Time.now}</p>"] : ["<p>Good Afternoon!</p><p>#{Time.now}</p>"]
    
  end
end

