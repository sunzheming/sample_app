module UsersHelper
def gravatar_for(user)
  gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
  gracatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
  image_tag(gracatar_url, alt:user.name, class: "gravatar")
end


end
