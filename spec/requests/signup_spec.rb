require 'spec_helper'

describe "Home" do
	before(:each)  do
		@user = Factory(:user)
	end

  describe "GET /" do
    it "should be successful" do
    	puts User.all.inspect
      visit root_path
      click_link "Sign in"
      fill_in "Email", :with => @user.email
      fill_in "Password", :with => @user.password
      click_button "Sign in"

      response.should render_template('users/show')
    end
  end
end
