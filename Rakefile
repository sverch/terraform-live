require 'rspec'

task :default => :spec
task :spec do
  ENV["AWSPEC_ENVIRONMENT_NAME"] = "testenv"
  RSpec::Core::Runner.run(["spec/default_spec.rb"])
end
