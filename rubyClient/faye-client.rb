require 'eventmachine'
require 'faye'

EM.run {
  client = Faye::Client.new('http://localhost:9292/faye')

  client.subscribe('/messages/new') do |message|
    puts message.inspect
  end

  # client.publish('/foo', 'text' => 'Hello world')
}