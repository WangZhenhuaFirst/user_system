# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
create_account = User.create!([name: 'wangzhenhua', email: '470021389@qq.com', telephone: '18551664870', password: '12345678', password_confirmation: '12345678', is_admin: 'true', remark: '我是管理员'])
puts "Admin account created."
