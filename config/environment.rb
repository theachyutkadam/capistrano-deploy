# Load the Rails application.
require_relative "application"
puts "++++++++aaaa+++++"
p Rails.env
puts "+++++++++++++"
ENV['RAILS_ENV'] = 'staging'
puts ENV['RAILS_ENV']
puts "+++++++++++++"

# Initialize the Rails application.
Rails.application.initialize!
