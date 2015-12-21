require_relative '../app/models/task.rb'
require 'faker'
5.times do 
	Task.create(task_name: Faker::Lorem.sentence)
end
