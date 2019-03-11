# frozen_string_literal: true

# https://github.com/pry/pry/pull/1849

if Pry::VERSION < '0.12.0'
  Pry.config.prompt = Pry::SIMPLE_PROMPT
elsif Pry::VERSION < '0.13'
  Pry.config.prompt = Pry::Prompt[:simple][:value]
else
  Pry.config.prompt = Pry::Prompt[:simple]
end
