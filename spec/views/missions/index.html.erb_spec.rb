require 'spec_helper'

describe "missions/index" do
  before(:each) do
    assign(:missions, [
      stub_model(Mission,
        :name => "Name",
        :monster => "Monster",
        :monster_weakness => "Monster Weakness",
        :reward_1 => "Reward 1",
        :reward_2 => "Reward 2",
        :reward_3 => "Reward 3",
        :drop_1 => "Drop 1",
        :drop_2 => "Drop 2"
      ),
      stub_model(Mission,
        :name => "Name",
        :monster => "Monster",
        :monster_weakness => "Monster Weakness",
        :reward_1 => "Reward 1",
        :reward_2 => "Reward 2",
        :reward_3 => "Reward 3",
        :drop_1 => "Drop 1",
        :drop_2 => "Drop 2"
      )
    ])
  end

  it "renders a list of missions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Monster".to_s, :count => 2
    assert_select "tr>td", :text => "Monster Weakness".to_s, :count => 2
    assert_select "tr>td", :text => "Reward 1".to_s, :count => 2
    assert_select "tr>td", :text => "Reward 2".to_s, :count => 2
    assert_select "tr>td", :text => "Reward 3".to_s, :count => 2
    assert_select "tr>td", :text => "Drop 1".to_s, :count => 2
    assert_select "tr>td", :text => "Drop 2".to_s, :count => 2
  end
end
