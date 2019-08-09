class API < Grape::API
  prefix 'api'
  version 'v1'
  mount Article::Data
end
