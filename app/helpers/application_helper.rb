module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def fa_icon(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class}"
  end

  def sklonenie_question_answer(count)
    if (count % 10).between?(5,9) || count % 10 == 0 || (count % 100).between?(11,14)
      "ов"
    elsif (count % 10).between?(2,4)
      "а"
    else
      ""
    end
  end

  def sklonenie_unanswered(count)
    if (count % 10).between?(2,9) || count % 10 == 0 || (count % 100).between?(11,14)
      "ных"
    else
      "ный"
    end
  end
end
