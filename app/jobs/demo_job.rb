class DemoJob < ApplicationJob
  queue_as :default

  def perform(*args)
    raise "foo" 
  end
end