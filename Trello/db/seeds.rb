# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: 'AlexHalk', email: 'alexM@gmail.com', password: '1111111111')
User.create(username: 'VasyPupkin', email: 'pupkin228M@mail.com', password: 'qwerttrewq')
User.create(username: 'IgorPlus', email: 'plusMeM@gmail.com', password: 'somepassword')
User.create(username: 'Ms.Marta', email: 'martaBoshM@gmail.com', password: '1234554321')

Label.create(color: 1, name: 'SomeLabel')
Label.create(color: 2, name: 'BigLabel')
Label.create(color: 3, name: 'Need Do')

Comment.create(text: 'Somes coment')
Comment.create(text: 'I`ll like this card`')
Comment.create(text: 'Yes I will do it')

Dashboard.create(title: 'NewTrello', public: true, owner: User.find(1))
Dashboard.create(title: 'Important Project', public: true, owner: User.find(2))
Dashboard.create(title: 'New Network', public: true, owner: User.find(3))

Membership.create(user_id: 1, dashboard_id: 1)
Membership.create(user_id: 2, dashboard_id: 1)
Membership.create(user_id: 1, dashboard_id: 2)
Membership.create(user_id: 2, dashboard_id: 2)
Membership.create(user_id: 3, dashboard_id: 2)

List.create(title: 'All tasks', dashboard_id: 1)
List.create(title: 'Firs tasks', dashboard_id: 1)
List.create(title: 'Second tasks', dashboard_id: 1)
List.create(title: 'Do for 2018/10/', dashboard_id: 2)
List.create(title: 'Do for 2018/09/', dashboard_id: 2)

Card.create(title: 'Create project', description: 'Need create only project', due_date: '2018-11-04 00:00:00', list: List.find(2))
Card.create(title: 'Create first web-page', description: 'Created empty page for view', due_date: '2018-11-07 00:00:00', list: List.find(3))
Card.create(title: 'Paint our Tem', description: 'U now what do', due_date: '2018-10-10 00:00:00', list: List.find(4))
Card.create(title: 'Pay for joobs', description: 'Only pay', due_date: '2018-08-04 00:00:00', list: List.find(1))

Attachment.create(attachable_id: 1, attachable_type: 'Comment')
Attachment.create(attachable_id: 2, attachable_type: 'Comment')
Attachment.create(attachable_id: 3, attachable_type: 'Card')

UserCardAssignment.create!(user_id: 1, card_id: 1)
UserCardAssignment.create!(user_id: 2, card_id: 2)
UserCardAssignment.create!(user_id: 3, card_id: 3)
UserCardAssignment.create!(user_id: 4, card_id: 4)

Card.find(1).labels << Label.find(1)
Card.find(1).labels << Label.find(2)
Card.find(2).labels << Label.find(1)
Card.find(2).labels << Label.find(3)








