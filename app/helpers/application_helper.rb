module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def questions_count(count)
    if count.between?(2,4)
      "Всего: #{count} вопроса "
    elsif (count % 10).between?(5, 9) || count % 10 == 0 || (count % 100).between?(11, 14)
      "Всего: #{count} вопросов"
    else
      "Всего: #{count} вопрос"
    end
  end
end
