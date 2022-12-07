module ApplicationHelper
  def render_button_in_nav
    yield if user_signed_in?
  end
end
