# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!([
  {email: "admin@admin.admin", password: "admin@admin.admin", password_confirmation: "admin@admin.admin", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: true},
  {email: "user@user.user", password: "user@user.user", password_confirmation: "user@user.user", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:01", last_sign_in_at: "2015-02-06 14:03:01", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: false, user: true},
  {email: "guest@guest.guest", password: "guest@guest.guest", password_confirmation: "guest@guest.guest", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:44", last_sign_in_at: "2015-02-06 14:03:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: false, user: false}
])
championships = Championship.create([{name: 'EURO 2016', user_id: User.first.id}, {name: 'Copa', user_id: User.second.id}])
Team.create([{name: 'France', championship_id: championships.first.id, user_id: User.first.id},
    {name: 'Germany', championship_id: championships.first.id, user_id: User.second.id}])
Team.create([{name: 'Argentina', championship_id: championships.last.id, user_id: User.first.id},
    {name: 'Brazil', championship_id: championships.last.id, user_id: User.second.id}])