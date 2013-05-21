require 'spec_helper'

describe "missions/new" do
  before(:each) do
    assign(:mission, stub_model(Mission,
      :name => "MyString",
      :monster => "MyString",
      :monster_weakness => "MyString",
      :reward_1 => "MyString",
      :reward_2 => "MyString",
      :reward_3 => "MyString",
      :drop_1 => "MyString",
      :drop_2 => "MyString"
    ).as_new_record)
  end

  it "renders new mission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => missions_path, :method => "post" do
      assert_select "input#mission_name", :name => "mission[name]"
      assert_select "input#mission_monster", :name => "mission[monster]"
      assert_select "input#mission_monster_weakness", :name => "mission[monster_weakness]"
      assert_select "input#mission_reward_1", :name => "mission[reward_1]"
      assert_select "input#mission_reward_2", :name => "mission[reward_2]"
      assert_select "input#mission_reward_3", :name => "mission[reward_3]"
      assert_select "input#mission_drop_1", :name => "mission[drop_1]"
      assert_select "input#mission_drop_2", :name => "mission[drop_2]"
    end
  end
end
