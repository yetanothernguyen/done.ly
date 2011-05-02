class Vote < ActiveRecord::Base
  
  named_scope :by_user, lambda { |user| {:conditions => "user_id = #{user.id}"}}
  
  belongs_to :user
  belongs_to :post
end
