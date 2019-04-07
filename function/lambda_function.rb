require 'json'
require 'rest_client'

def lambda_handler(event:, context:)
  request_params = Hash[event.map{|(k,v)| [k.to_sym,v]}]
  response = RestClient::Request.execute(request_params)
  result = JSON.parse(response.body)
  { statusCode: 200, body: result }
end
