require 'spec_helper'

describe "teams/index.html.erb" do
  before(:each) do
    assign(:teams, [
      stub_model(Team),
      stub_model(Team)
    ])
  end

  it "renders a list of teams" do
    render
  end
end
