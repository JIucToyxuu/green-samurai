# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@description = "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque porta tempor efficitur. In ante neque, fermentum eu elementum sit amet, pharetra id ante. Sed enim odio, scelerisque vitae mollis sed, blandit vitae felis. Donec pulvinar vitae sem semper laoreet. Vivamus tristique pulvinar mauris, non interdum ex eleifend sed. Ut maximus rutrum dui. Pellentesque viverra dui vel risus volutpat malesuada. Sed et metus at leo auctor euismod.</p> 

<p>Duis a eleifend ipsum. Cras ornare augue sed justo dignissim rutrum. Sed mollis pellentesque lectus, quis aliquet eros dictum vitae. Vestibulum at nulla risus. Suspendisse ac facilisis libero, ut consectetur turpis. Etiam erat purus, cursus non consequat sed, vulputate ac diam. Nunc porttitor volutpat sem, at faucibus sem accumsan auctor. Nullam dapibus odio nec sapien feugiat pharetra. Mauris dictum sem in felis ultricies mollis. Vestibulum vel purus vehicula, dictum erat egestas, faucibus dolor. Vivamus molestie sollicitudin quam, nec cursus lectus tempor nec.</p>

<p>Aliquam malesuada urna vel iaculis pretium. In ut massa ut purus congue interdum in in nulla. Nam pellentesque vulputate turpis, nec pharetra nisi finibus non. Nunc ipsum dui, faucibus sit amet consectetur eget, fermentum vel nulla. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque ut mattis neque, eu vehicula magna. Vivamus sollicitudin sapien ac nisi elementum, eget ornare neque accumsan. Aliquam erat volutpat. Pellentesque egestas malesuada ipsum in facilisis. Pellentesque tempor quam vel faucibus scelerisque. Etiam dignissim pharetra eros, in tempor augue. Sed commodo placerat augue, eu auctor lorem aliquam eu. Maecenas tempus hendrerit sem nec varius. Aliquam ante mauris, fermentum ut ex et, lacinia consectetur tellus. Donec ac ornare magna.</p>

<p>Praesent at semper tortor. Nam efficitur at orci ut elementum. In gravida scelerisque ipsum, vel molestie ex semper at. Duis pharetra augue velit, pharetra ornare tellus luctus eget. Vestibulum risus nibh, cursus vel urna ut, egestas hendrerit lorem. Quisque in mi ornare, scelerisque nibh nec, cursus quam. Suspendisse faucibus lorem vel lacus suscipit posuere. Morbi non turpis eget velit suscipit placerat ac in urna. Morbi luctus odio sit amet luctus porttitor. Sed a massa cursus, lacinia odio sed, volutpat metus. Duis laoreet, ante tincidunt elementum ullamcorper, nisi diam volutpat sapien, a cursus lectus odio at lectus.</p>

<p>Quisque et sem lacinia, vehicula massa sed, pharetra nisi. Aliquam vitae augue sagittis nulla iaculis dictum. In efficitur eleifend faucibus. Fusce ornare tempus nisi a sodales. Aenean et neque id enim tristique molestie eu quis ex. Nunc in luctus arcu. Integer luctus metus lacus, ut condimentum arcu eleifend pretium. In luctus ac massa et lacinia. Nunc a dignissim quam. Cras commodo quam vel lorem pharetra dictum. Donec porttitor, dolor at pharetra ultricies, nisi nunc tempus sem, quis lacinia odio odio id purus. Maecenas lacinia diam ac velit interdum, in tristique massa pretium. Mauris lacus massa, hendrerit in velit at, laoreet euismod magna.</p>"

@short_description = @description[0..447] + '...'

university_list = [
  [ "MIT", @description, @short_description, 'MIT' ],
  [ "Yale", @description, @short_description, 'Harv' ],
  [ "Princeton", @description, @short_description, 'Prince' ],
  [ "NPI", @description, @short_description, 'NPI' ]
]

university_list.each do |name, description, short_description, abbreviation|
  University.create( name: name, description: description, short_description: short_description, abbreviation: abbreviation )
end


# add Users
users_list = [
	[ 'John Doe', 'anton_duzhnov.90@mail.ru', '12qwaszx', '2015-01-14 06:35:10.980352']
]

users_list.each do |name, email, password, confirmed_at|
  User.create!( name: name, email: email, password: password, confirmed_at: confirmed_at )
end

#add Courses
course_list = [
  [ "Как тащить на Е-50", '1', 'code1', '14/02/2015', '1 день', '5', 'Впервые мастер класс по Е-50', 'Стальной монстр германского такнкосторения', '', 25],
  [ "Мастер класс от ведущих оленеводов", '1', 'code2', '14/02/2015', '3 дня', '18', 'На Слииииив!', 'Старайтесь не уничтожать врага, так ваши шансы на слив значительно возрастают', '', 25 ],
  [ "КВ-5 гайд", '2', 'code3', '14/02/2015', '3 дня', '18', 'Гайд по тяжелому танку СССР КВ-5', 'Уберите от экранов радистов и всех со слабыми нервами', '', 25 ],
  [ "Места пробития 'десяток'", '4', 'code4', '14/02/2015', '2 дня', '11', 'Безысходность', 'Для пробития многих бронемашин вам помогут премиум-снаряды! Заряжай "голду"!', '', 25 ]
]

course_list.each do |name, university, code, date_begin, duration_course, hours_per_week, title, about, notes, limit|
  Course.create( name: name, university: University.find_by_id(university), code: code, date_begin: date_begin, duration_course: duration_course, hours_per_week: hours_per_week, title: title, about: about, notes: notes, limit: limit )
end

pupils_list = [
  [ 1, 1 ],
  [ 1, 3 ]
]
pupils_list.each do |user, course|
  Pupil.create!( users_id: user, courses_id: course )
end