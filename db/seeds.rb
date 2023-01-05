User.create!([
  {id: 1, name: 'admin', email: 'admin@yahoo.com', password: 'admin@@', password_confirmation: 'admin@@'},
  {id: 2, name: 'user', email: 'user@yahoo.com', password: 'user@@', password_confirmation: 'user@@'},
  {id: 3, name: 'jerry', email: 'jerry@yahoo.com', password: 'jerry@@', password_confirmation: 'jerry@@'}])

Category.create!([
  {id: 1, name: 'Entertainment', icon: 'https://picsum.photos/200/300?random=1', user_id: 1},
  {id: 2, name: 'Household', icon: 'https://picsum.photos/200/300?random=2', user_id: 1},
  {id: 3, name: 'Dine In', icon: 'https://picsum.photos/200/300?random=3', user_id: 1},
  {id: 4, name: 'Games', icon: 'https://picsum.photos/200/300?random=4', user_id: 2},
  {id: 5, name: 'Home', icon: 'https://picsum.photos/200/300?random=5', user_id: 2},
  {id: 6, name: 'Household', icon: 'https://picsum.photos/200/300?random=6', user_id: 3},
])

Budget.create!([
  {id: 1, name: 'Netflix', amount: 11, user_id: 1},
  {id: 2, name: 'Spotify', amount: 10, user_id: 1},
  {id: 3, name: 'Electricity', amount: 13, user_id: 1},
  {id: 4, name: 'Water', amount: 17, user_id: 1},
  {id: 5, name: 'Gas', amount: 15, user_id: 1},
  {id: 6, name: 'Dinner', amount: 50, user_id: 1},
  {id: 7, name: 'Lunch', amount: 50, user_id: 1},
  {id: 8, name: 'Breakfast', amount: 50, user_id: 1},
  {id: 9, name: 'Black Bunny Play Zone', amount: 11, user_id: 2},
  {id: 10, name: 'Basketball Court', amount: 10, user_id: 2},
  {id: 11, name: 'House Clean', amount: 70, user_id: 2},
  {id: 12, name: 'Water', amount: 10, user_id: 2},
  {id: 13, name: 'Gas', amount: 10, user_id: 2},
  {id: 19, name: 'Electricity', amount: 30, user_id: 3},
  {id: 20, name: 'Water', amount: 20, user_id: 3},
  {id: 21, name: 'Gas', amount: 10, user_id: 3}
  ])

CategoryBudget.create!([
  {id: 1, budget_id: 1, category_id: 1},
  {id: 2, budget_id: 2, category_id: 1},
  {id: 3, budget_id: 3, category_id: 2},
  {id: 4, budget_id: 4, category_id: 2},
  {id: 5, budget_id: 5, category_id: 2},
  {id: 6, budget_id: 6, category_id: 3},
  {id: 7, budget_id: 7, category_id: 3},
  {id: 8, budget_id: 8, category_id: 3},
  {id: 9, budget_id: 9, category_id: 4},
  {id: 10, budget_id: 10, category_id: 4},
  {id: 11, budget_id: 11, category_id: 5},
  {id: 12, budget_id: 12, category_id: 5},
  {id: 13, budget_id: 13, category_id: 5},
  {id: 14, budget_id: 19, category_id: 6},
  {id: 15, budget_id: 20, category_id: 6},
  {id: 16, budget_id: 21, category_id: 6}
  ])


