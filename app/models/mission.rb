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
      	where('reward_1 ILIKE ? OR reward_2 ILIKE ? OR reward_3 ILIKE ?',
      							"%#{search}%", "%#{search}%", "%#{search}%")
      else
      	all
      end
  	end

	def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |mission|
	      csv << mission.attributes.values_at(*column_names)
	    end
	  end
	end


end
