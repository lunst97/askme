class UsersController < ApplicationController
  def index
    @users = [
      User.new(
        id: 1,
        name: 'Vadim',
        username: 'installero',
        avatar_url: 'https://i.ibb.co/5BjGq4s/3703.jpg'
      ),
      User.new(
        id: 2,
        name: 'Misha',
        username: 'aristofun'
      )
    ]
  end

  def new

  end

  def edit

  end

  def show
    @user = User.new(
      name: 'Sasha',
      username: 'lunst',
      avatar_url: 'https://i.ibb.co/5BjGq4s/3703.jpg'
    )

    @questions = [
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020')),
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'Чего делаешь?', created_at: Date.parse('29.03.2020'))
    ]

    @new_question = Question.new
  end
end
