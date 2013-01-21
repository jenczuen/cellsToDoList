class Task < ActiveRecord::Base
	attr_accessible :title, :body, :done, :date
end
