class Mission < ActiveRecord::Base
	require 'csv'
  attr_accessible :drop_1, :drop_2, :monster, :monster_weakness, :name, :reward_1, :reward_2, :reward_3

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Mission.create!(row.to_hash)
		end
	end
end
