Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://localhost:6379/0'}
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://localhost:6379/0'}
end




# require 'redis-namespace'

# redis_url = 'redis://localhost:6379/0'  # Update with your Redis URL
# namespace = 'Ecommerce_ActiveAdmin'

# redis = Redis.new(url: redis_url)
# redis_namespaced = Redis::Namespace.new(namespace, redis: redis)

# Sidekiq.configure_server do |config|
#   config.redis = { url: redis_url, driver: redis_namespaced }
# end

# Sidekiq.configure_client do |config|
#   config.redis = { url: redis_url, driver: redis_namespaced }
# end
