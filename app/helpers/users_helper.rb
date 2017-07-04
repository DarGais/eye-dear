module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = {} )
  	options = {size: 100, gravatar_class: "gravatar"}.merge(options)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_class = options[:gravatar_class]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: gravatar_class)
  end
end
