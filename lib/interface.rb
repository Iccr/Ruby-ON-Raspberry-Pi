class Interface
   require 'rest_client'
   require 'json'
   def send
     data = {
       channel: "/messages/new",
       data: "hello"
     }
     RestClient.post 'http://localhost:9292/faye', {message: data.to_json}, {:content_type => :json, :accept => :json}
   end
end
