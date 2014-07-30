require 'pathname'
require 'faker'
APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))

APP_NAME = APP_ROOT.basename.to_s

require APP_ROOT.join('config', 'environment')
100.times do
	User.create(username: Faker::Internet.user_name, password: (rand(10).to_s + Faker::Lorem.word + rand(10).to_s), full_name: Faker::Name.name, email_address: Faker::Internet.free_email)
end