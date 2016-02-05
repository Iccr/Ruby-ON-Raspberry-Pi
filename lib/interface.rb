class Interface
   include HTTParty
   def send
     data = {
       channel: "messages/new",
       data: "hello"
     }
     HTTParty.post("http://localhost:9292/faye", {
       :message=> "hello",
       :headers => { 'Content-Type' => 'application/json' }
       }
       )
   end
end
# curl http://localhost:9292/faye -d 'message={"channel":"/messages/new", "data":"hello"}'
# HTTParty.post("http://rubygems.org/api/v1/gems/httparty/owners",
#     :query => { :email => "alan+thinkvitamin@carsonified.com" })
