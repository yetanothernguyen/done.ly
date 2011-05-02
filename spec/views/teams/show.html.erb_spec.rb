require 'spec_helper'

describe "teams/show.html.erb" do
  before(:each) do
    @team = assign(:team, stub_model(Team))
  end

  it "renders attributes in <p>" do
    render
  end
end
