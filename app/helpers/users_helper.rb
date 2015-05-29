module UsersHelper

  def avatar(user, size = 100, klass = nil)
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    content_tag(:div, :class => "avatar-container #{klass}") do
      image_tag "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}&d=mm",
        :class => 'avatar'
    end
  end

  def all_users
    @all_users ||= User.all.alpha
  end

end
