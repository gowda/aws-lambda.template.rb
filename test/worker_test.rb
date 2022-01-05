# frozen_string_literal: true

require 'minitest/autorun'
require 'worker'

class WorkerTest < Minitest::Test
  attr_reader :worker

  def setup
    @worker = Worker.new(**{})
  end

  def test_worker
    assert_equal({ message: 'Success' }, worker.call)
  end
end
