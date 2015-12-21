require_relative '../../config/application.rb'

class Models < ActiveRecord::Migration
	def change
		create_table :tasks do |t|
			t.string :task_name
			t.integer :complete

			t.timestamps null:false
		end
	end
end
