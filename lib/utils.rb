module Utils
  def self.add_invite_token(token, cookies)
    invite_tokens = cookies["invite_tokens"] ? Marshal.load(cookies["invite_tokens"]) : []
    invite_tokens << token
    cookies.permanent["invite_tokens"] = Marshal.dump(invite_tokens)
  end

  def self.remove_invite_token(token, cookies)
    invite_tokens = cookies["invite_tokens"] ? Marshal.load(cookies["invite_tokens"]) : []
    invite_tokens.delete(token)
    cookies.permanent["invite_tokens"] = Marshal.dump(invite_tokens)
  end

  def self.get_invite_tokens(cookies)
    invite_tokens = cookies["invite_tokens"] ? Marshal.load(cookies["invite_tokens"]) : []
  end
end