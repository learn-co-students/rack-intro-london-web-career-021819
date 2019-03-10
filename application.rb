class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, my name is Harry"
    resp.finish
  end

end
