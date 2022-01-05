# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('lib', __dir__))

require 'worker'

def handler(**options)
  Worker.new(options).call
end
