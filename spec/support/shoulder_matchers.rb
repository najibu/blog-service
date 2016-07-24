RSpec.configure do 
  Shoulda::Matchers.configure do |configure|
    configure.integrate do |with|
      # Choose a test framework:
      with.test_framework :rspec

      # Or, choose the following (which implies all of the above):
      with.library :rails
    end
  end
end