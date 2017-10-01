require 'rspec/core/rake_task'

# TODO: run rspec for every environment
ENV["AWSPEC_ENVIRONMENT_NAME"] = "testenv"
RSpec::Core::RakeTask.new('spec')
task :default => :spec
