module ApplicationHelper

	def avatar_url(user, size = nil)
		gravatar_id = Digest::MD5::hexdigest(user.email).downcase  
    "http://gravatar.com/avatar/#{gravatar_id}" + (size ? "?s=#{size}" : "")
	end
end
