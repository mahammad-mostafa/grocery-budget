module Setup
  def initializer(action = '')
    user = User.create!(name: 'user', email: 'email@domain.com', password: 'password')
    group = Group.create!(user_id: user.id, name: 'group', icon: 'https://placehold.co/100')
    Item.create!(author_id: user.id, name: 'item', amount: 1, group_ids: [group.id])
    sign_in(user) if action == 'login'
  end
end
