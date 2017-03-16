# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create([
  { username: "ashleyyy", pwd: '23456', email: 'ashleyfisher@gmail.com',  gravatar: "'https://s.gravatar.com/avatar/4e24e73e2082b4db6128a8c8dee143eb?size=48&default=wavatar'" }, #user_id: 1
  { username: "firstdummy", pwd: '56789', email: 'dummy@email.com', gravatar: "'https://s.gravatar.com/avatar/fb651279f4712e209991e05610dfb03a?size=48&default=wavatar'"}, #user_id: 2
  { username: "secondfool", pwd: '56789', email: 'second@email.com', gravatar: "'https://s.gravatar.com/avatar/29e4aea606c385e351ca3f6bdb940e4c?size=48&default=wavatar'"}, #user_id: 3
  { username: "madeupuser", pwd: '56789', email: 'madeupuser@email.com', gravatar: "'https://s.gravatar.com/avatar/df74afdcf05f6c1d3f62043ae6e0d588?size=48&default=wavatar'"} #user_id: 4
])

Task.create ([
  { user_id: 1, description: 'A non recurring task', recurring: false, completed: false, postponed: false}, # task_id: 1
  { user_id: 1, description: 'A recurring task', recurring: true, completed: false, postponed: false}, # task_id: 1
  { user_id: 1, description: 'A completed non recurring task', recurring: false, completed: true, postponed: false}, # task_id: 3
  { user_id: 1, description: 'A completed recurring task', recurring: true, completed: true, postponed: false}, # task_id: 4

  { user_id: 2, description: 'Walk the dog', recurring: false, completed: false, postponed: false}, # task_id: 5
  { user_id: 2, description: 'Eat a veggie', recurring: true, completed: false, postponed: false}, # task_id: 6
  { user_id: 2, description: 'Floss', recurring: false, completed: true, postponed: false}, # task_id: 7
  { user_id: 2, description: 'Do six push-ups', recurring: true, completed: true, postponed: false}, # task_id: 8

  { user_id: 3, description: 'Watch TV', recurring: false, completed: false, postponed: false}, # task_id: 9
  { user_id: 3, description: 'Do laundry', recurring: true, completed: false, postponed: false}, # task_id: 10
  { user_id: 3, description: 'Phone mom', recurring: false, completed: true, postponed: false}, # task_id: 11
  { user_id: 3, description: 'Ride bike', recurring: true, completed: true, postponed: false}, # task_id: 12

  { user_id: 4, description: 'Make a salad', recurring: false, completed: false, postponed: false}, # task_id: 13
  { user_id: 4, description: 'Make dentist appointment', recurring: true, completed: false, postponed: false}, # task_id: 14
  { user_id: 4, description: 'Floss', recurring: false, completed: true, postponed: false}, # task_id: 15
  { user_id: 4, description: 'Feed cats', recurring: true, completed: true, postponed: false}, # task_id: 16

  { user_id: 2, description: 'Push to github', recurring: false, completed: true, postponed: false}, # task_id: 17
  { user_id: 2, description: 'Wash the dishes', recurring: true, completed: true, postponed: false}, # task_id: 18
  { user_id: 2, description: 'See stars', recurring: false, completed: true, postponed: false}, # task_id: 19
  { user_id: 2, description: 'Walk outside', recurring: true, completed: true, postponed: false}, # task_id: 20

  { user_id: 1, description: 'Bake cookies', recurring: false, completed: true, postponed: false}, # task_id: 21
  { user_id: 1, description: 'Make friends', recurring: true, completed: true, postponed: false}, # task_id: 22
  { user_id: 1, description: 'Take a shower', recurring: true, completed: true, postponed: false}, # task_id: 23
  { user_id: 1, description: 'Get massage', recurring: true, completed: true, postponed: false} # task_id: 24  
])

Star.create ([      
  { task_id: 3, user_id: 1, x_cord: 10, y_cord: 50},
  { task_id: 4, user_id: 1, x_cord: 45, y_cord: 76},
  { task_id: 21, user_id: 1, x_cord: 67, y_cord: 90},
  { task_id: 22, user_id: 1, x_cord: 45, y_cord: 23},
  { task_id: 23, user_id: 1, x_cord: 76, y_cord: 35},
  { task_id: 24, user_id: 1, x_cord: 53, y_cord: 74},

  { task_id: 7, user_id: 2, x_cord: 23, y_cord: 53},
  { task_id: 8, user_id: 2, x_cord: 16, y_cord: 25},
  { task_id: 17, user_id: 2, x_cord: 67, y_cord: 90},
  { task_id: 18, user_id: 2, x_cord: 45, y_cord: 23},
  { task_id: 19, user_id: 2, x_cord: 76, y_cord: 35},
  { task_id: 20, user_id: 2, x_cord: 53, y_cord: 74},
  
  { task_id: 11, user_id: 3, x_cord: 67, y_cord: 90},
  { task_id: 12, user_id: 3, x_cord: 45, y_cord: 23},
  { task_id: 15, user_id: 4, x_cord: 76, y_cord: 35},
  { task_id: 16, user_id: 4, x_cord: 53, y_cord: 74}
])