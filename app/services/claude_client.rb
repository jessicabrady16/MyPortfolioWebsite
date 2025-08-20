# app/services/claude_client.rb
class ClaudeClient
  CLIENT =
    (defined?(ANTHROPIC_CLIENT) && ANTHROPIC_CLIENT) ||
    Anthropic::Client.new(api_key: ENV.fetch("ANTHROPIC_API_KEY"))

  def self.complete(prompt)
    CLIENT.messages.create(
      model: "claude-3-5-sonnet-latest",
      max_tokens: 60,
      messages: [{ role: "user", content: prompt }]
    )
  end
end
