require 'cucumber/rails'
require 'capybara/cucumber'

Capybara.default_driver = :selenium

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner[:mongoid].strategy = :truncation
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation

