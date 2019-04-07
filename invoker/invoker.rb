require 'aws-sdk'
require 'json'

credentials = Aws::Credentials.new(
  ENV["AWS_LAMBDA_ACCESS_KEY_ID"],
  ENV["AWS_LAMBDA_SECRET_ACCESS_KEY"]
)
client = Aws::Lambda::Client.new(
  region: ENV["AWS_LAMBDA_REGION"],
  credentials: credentials
)

superhero_token = ENV["SUPERHEROAPI_ACCESS_TOKEN"]

request_params = {
  method: :get,
  url: "https://superheroapi.com/api/#{superhero_token}/search/superman",
  timeout: 30
}

resp = client.invoke({
  function_name: 'your_lambda_function_name',
  invocation_type: 'RequestResponse',
  log_type: 'None',
  payload: request_params.to_json
})

begin
  resp_payload = JSON.parse(resp.payload.string, symbolize_names: true)

  if resp_payload[:statusCode] == 200
    puts "response body: #{resp_payload[:body]}"
  else
    puts "statusCode: #{resp_payload[:statusCode]}, response: #{resp.payload.string}"
  end
rescue JSON::ParserError => e
  puts "lambda error: #{resp.payload.string}"
end
