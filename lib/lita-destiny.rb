require "lita"

# Bring in locales from '/locales/*.yml'
Lita.load_locales Dir[File.expand_path(
  File.join("..", "..", "locales", "*.yml"), __FILE__
)]

# Require core files
require "destiny/base_api"
require "lita/handlers/destiny"

# Require response templates
Lita::Handlers::Destiny.template_root File.expand_path(
  File.join("..", "..", "templates"),
 __FILE__
)
