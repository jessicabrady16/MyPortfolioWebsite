# config/initializers/anthropic.rb
key = ENV["ANTHROPIC_API_KEY"]
ANTHROPIC_CLIENT = Anthropic::Client.new(api_key: key) if key && !key.empty?

