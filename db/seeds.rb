# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)



# Teams
Team.find_or_create_by_name(:name => "SAYS.my", :description => "We're a group of young people based in Asia who grow businesses related to social technology and the collective power of people. We love working with great people to build leading products in the fastest growing markets.")