class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.string :monster
      t.string :monster_weakness
      t.string :reward_1
      t.string :reward_2
      t.string :reward_3
      t.string :drop_1
      t.string :drop_2

      t.timestamps
    end
  end
end
