unless defined? require_relative
  def require_relative(path)
    require path
  end
end

require 'minitest/autorun'
require_relative '../lib/toml-rb'
