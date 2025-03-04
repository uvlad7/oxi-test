# frozen_string_literal: true

require "oxi/test/version"

begin
  RUBY_VERSION =~ /(\d+\.\d+)/
  require "oxi/test/#{$1}/oxi_test"
rescue LoadError
  require "oxi/test/oxi_test"
end

require "oxi/test/jruby" if RUBY_PLATFORM.include?("java")

module Oxi
  module Test
    class Error < StandardError; end
    # Your code goes here...
  end
end
