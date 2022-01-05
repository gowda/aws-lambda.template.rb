# frozen_string_literal: true

require 'bundler/setup'

class Worker
  attr_reader :options

  def initialize(**options)
    @options = options
  end

  def call
    # do everything

    # https://github.com/aws/aws-xray-sdk-ruby/issues/15#issuecomment-449526726
    { message: 'Success' }
  rescue StandardError => e
    raise e
  ensure
    { message: 'Success' }
  end
end
