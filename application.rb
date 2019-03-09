class Application

# Step1. call needs to return a response which consists of the status code, any headers, and the body
  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, my name is Laura Royle"
    resp.finish
  end

end

# The above is the code that will be run whenever there is a request received.

#Step2 We need to actually set up an HTTP web server that will receive the HTTP request, send it through the above `#call` method, and then serve the response to the browser. We do this using a `config.ru` file and the `rackup` command
