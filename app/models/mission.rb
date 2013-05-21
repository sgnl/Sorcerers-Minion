class Mission < ActiveRecord::Base
require 'csv'
  attr_accessible :drop_1, :drop_2, :monster, :monster_weakness, :name, :reward_1, :reward_2, :reward_3


	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Mission.create!(row.to_hash)
		end
	end

	def self.search(search)
      if search
      	where('reward_1 LIKE ? OR reward_2 LIKE ? OR reward_3 LIKE ?',
      							"%#{search}%", "%#{search}%", "%#{search}%")
      else
      	all
      end
  	end
end
