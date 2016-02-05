require 'eventmachine'
require 'faye'
require 'pry'
EM.run {
  client = Faye::Client.new('http://localhost:9292/faye')

  client.subscribe('/messages/new') do |message|
    binding.pry
    puts message.inspect
  end

  # client.publish('/foo', 'text' => 'Hello world')
}
