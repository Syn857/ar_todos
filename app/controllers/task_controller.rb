require_relative '../../config/application'
require_relative '../models/task.rb'


class TaskController
 	attr_accessor :id, :task, :complete

 	def self.list
   		Task.all
 	end

 	def self.task_name(id)
   		task = Task.find(id)
   		task[:task]
 	end


 	def self.add(task)
  		Task.create(task_name: task, complete: 0)
	end

 

 	def self.list_completed
   		Task.find(:all, :condition => [complete: 1])
 	end

 	def self.update(id)
   		task = Task.find(id)
   		task[:complete] = 1
   		task.save
   	end

	def self.delete(id)
   		Task.delete (id)
 	end
end