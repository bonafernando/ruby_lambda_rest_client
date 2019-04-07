require 'json'
require 'rest_client'

def lambda_handler(event:, context:)
  request_params = event.transform_keys(&:to_sym)
  response = RestClient::Request.execute(request_params)
  result = JSON.parse(response.body)
  { statusCode: 200, body: result }
end
