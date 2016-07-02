class HomeController < ApplicationController
    include ActionController::Live

  def index
      
  end
  
    def stream
        #https://www.sitepoint.com/streaming-with-rails-4/
        response.headers['Content-Type'] = 'text/event-stream'
      10.times{
          response.stream.write "hello world\n\n"
          }
      response.stream.close
    end
end
