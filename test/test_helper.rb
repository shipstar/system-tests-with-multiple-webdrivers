ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "minitest/reporters"

Minitest::Reporters.use! [
  Minitest::Reporters::ProgressReporter.new,
  Minitest::Reporters::MeanTimeReporter.new(
    show_progress: false,
    previous_runs_filename: Rails.root.join("tmp/minitest_reporters_previous_run"),
    report_filename: Rails.root.join("tmp/minitest_reporters_report")
)]

class ActiveSupport::TestCase
  include RSpec::Matchers

  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Add more helper methods to be used by all tests here...
end
