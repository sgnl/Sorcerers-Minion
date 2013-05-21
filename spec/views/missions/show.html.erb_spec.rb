require 'spec_helper'

describe "missions/show" do
  before(:each) do
    @mission = assign(:mission, stub_model(Mission,
      :name => "Name",
      :monster => "Monster",
      :monster_weakness => "Monster Weakness",
      :reward_1 => "Reward 1",
      :reward_2 => "Reward 2",
      :reward_3 => "Reward 3",
      :drop_1 => "Drop 1",
      :drop_2 => "Drop 2"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Monster/)
    rendered.should match(/Monster Weakness/)
    rendered.should match(/Reward 1/)
    rendered.should match(/Reward 2/)
    rendered.should match(/Reward 3/)
    rendered.should match(/Drop 1/)
    rendered.should match(/Drop 2/)
  end
end
