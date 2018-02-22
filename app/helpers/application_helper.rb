module ApplicationHelper
  def form_group_tag(errors, &block)
    css_class = 'form-group'
    css_class << ' has-error' if errors.any?

    content_tag :div, capture(&block), class: css_class
  end

  def avatar_url(user)
     gravatar_id = Digest::MD5::hexdigest(user.email).downcase
     "https://s.gravatar.com/avatar/d32d6bc2f4d6a4643bb3f1b24811b0af?s=80"
   end

end
