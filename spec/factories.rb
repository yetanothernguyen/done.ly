Factory.define :user do |u|
	u.name 'Example User'
	u.email 'user@example.org'
	u.password 'password'
	u.admin false
end

Factory.define :admin, :class => User do |a|
  a.name 'Example User'
	a.email 'user@example.org'
	a.password 'password'
	a.admin true
end