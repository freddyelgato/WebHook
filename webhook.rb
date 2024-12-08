require 'sinatra'
require 'json'

set :bind, '0.0.0.0'  

# Define a POST route for the '/webhook' endpoint
post '/webhook' do
  # Read the request body (the JSON data sent in the POST request)
  request_body = request.body.read
  
  # Parse the JSON data into a Ruby hash
  payload = JSON.parse(request_body)

  # Print the event and message from the payload to the server's console
  puts "Event received: #{payload['event']}, Message: #{payload['data']['message']}"

  # Set the content type of the response to JSON
  content_type :json
  
  # Respond with a JSON message confirming that the webhook was received
  { message: 'Hello World: Webhook Successfully Received' }.to_json
end

# Output a message to the console indicating the server is running and listening on port 4567
puts "Server listening on port 4567..."
