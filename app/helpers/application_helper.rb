module ApplicationHelper
  def is_user_signed_in
    yield if user_signed_in?
  end

  def is_user_not_signed_in
    yield unless user_signed_in?
  end
end
