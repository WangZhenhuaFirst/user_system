# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(name: "wangzhenhua",
		     email: "470021389@qq.com",
		     telephone: "18551664871",
		     password: "ym9093",
		     password_confirmation: "ym9093",
		     is_admin: true,
		     remark: "我是管理员")