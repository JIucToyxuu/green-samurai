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

@mfti = '<h2>История университета</h2>
<p>Московский физико-технический институт (государственный университет) - один из самых авторитетных технических вузов страны, входит в топ-5 крупных рейтингов российских университетов. Основой образования в МФТИ является уникальная "система Физтеха": кропотливое воспитание и отбор самых талантливых абитуриентов, фундаментальное образование высшего класса.</p>
<p>Его основателями и сотрудниками были академики П.Л.Капица, Н.Н.Семенов, С.А. Христианович. Первыми профессорами были Нобелевские лауреаты П.Л.Капица, Н.Н.Семенов, Л.Д. Ландау. Среди выпускников МФТИ</p>'
@short_mfti = '<h2>История университета</h2>
<p>Московский физико-технический институт (государственный университет) - один из самых авторитетных технических вузов страны, входит в топ-5 крупных рейтингов российских университетов. Основой образования в МФТИ является уникальная "система Физтеха": кропотливое воспитание и отбор самых талантливых абитуриентов, фундаментальное образование высшего класса.</p>'

university_list = [
  [ "Московский государственный университет имени М. В. Ломоносова", @description, @short_description, 'МГУ', 'mgu.png', '' ],
  [ "МОСКОВСКИЙ ФИЗИКО-ТЕХНИЧЕСКИЙ ИНСТИТУТ", @mfti, @short_mfti, 'МФТИ', 'mfti.png', 'img2.jpg' ],
  [ "Princeton", @description, @short_description, 'Prince', '', '' ],
  [ "NPI", @description, @short_description, 'NPI', '', '' ]
]

university_list.each do |name, description, short_description, abbreviation, logo, picture|
  University.create( name: name, description: description, short_description: short_description, abbreviation: abbreviation, logo: logo, picture: picture )
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
  [ "Как тащить на Е-50", '1', 'code1', '16/02/2015', '1 день', '5', 'Впервые мастер класс по Е-50', 'Стальной монстр германского такнкосторения', '', 25, 'cours_img_01.jpg', false],
  [ "Мастер класс от ведущих оленеводов", '1', 'code2', '14/01/2015', '3 дня', '18', 'На Слииииив!', 'Старайтесь не уничтожать врага, так ваши шансы на слив значительно возрастают', '', 25, 'cours_img_02.jpg', true ],
  [ "КВ-5 гайд", '2', 'code3', '14/02/2015', '3 дня', '18', 'Гайд по тяжелому танку СССР КВ-5', 'Уберите от экранов радистов и всех со слабыми нервами', '', 25, 'cours_img_03.jpg', false ],
  [ "Места пробития 'десяток'", '4', 'code4', '14/02/2014', '2 дня', '11', 'Безысходность', 'Для пробития многих бронемашин вам помогут премиум-снаряды! Заряжай "голду"!', '', 25, 'cours_img_04.jpg', true ]
]

course_list.each do |name, university, code, date_begin, duration_course, hours_per_week, title, about, notes, limit, picture, free|
  Course.create( name: name, university: University.find_by_id(university), code: code, date_begin: date_begin, duration_course: duration_course, hours_per_week: hours_per_week, title: title, about: about, notes: notes, limit: limit, picture: picture, free: free )
end

pupils_list = [
  [ 1, 1 ],
  [ 1, 3 ]
]
pupils_list.each do |user, course|
  Pupil.create!( users_id: user, courses_id: course )
end

@dower = "Джон У. Dower (родился 21 июня 1938 в Провиденсе, Род-Айленд) - американский писатель и историк. Его  книга 'Embracing Defeat: Japan in the Wake of World War II' выиграла Национальную книжную премию за научную литературу, Пулитцеровскую премию за публицистически и премию американской исторической ассоциации.

Dower получил степень бакалавра в  1959 году, и стал доктором в истории и Дальнего Востока языков в Гарвардском университете в 1972 году, где он учился Альберт М. Крэйг. Он расширил свою докторскую диссертацию, биографии бывшего премьер-министра Японии Ёсида Сигэру, в книге Empire и Aftermath. Его другие книги включают выбор трудах Э. Герберт Норман и изучение взаимных изображений во время Второй мировой войны под названием Война без милосердия.

Dower был исполнительным продюсером Оскар назначенных документальный Hellfire: путешествие из Хиросимы, и был членом Комитета обеспокоенных азиатских ученых, сидя в редакции его журнала с Ноам Хомский, и Герберт Bix. Он преподавал в Университете Висконсин-Мэдисон и университета Калифорнии, Сан-Диего, и Форд Международная профессор истории, почетный в Массачусетском технологическом институте."

@gordon = "Андрей Гордон видный ученый современной японской истории. Он Ли и Джульетта Фолгер фонд профессор истории Гарвардского университета и бывший заведующий кафедрой истории там с 2004-2007 гг. Он был директором Эдвин Райшауэр Института японских исследований с 1998 по 2004 год [1]

Эндрю Гордон защитил докторскую диссертацию по истории и восточно-азиатских языков в Гарвардском университете в 1981 году После завершения аспирантуры он преподавал историю в обоих Университета Дьюка и в Гарварде. Он является одним из ведущих специалистов по японской истории труда, но в последнее время перешли к другим областям. Гордон 2003 История современной Японии является одним из стандартных учебников по этой теме и была переведена на японский язык.Пересмотренное издание работе был выпущен в 2009 году Гордон совсем недавно занимались исследованиями в области истории швейной машины и решений современного потребителя в 20 веке Японии."


authors_list = [
  [ 'person1.jpg', 'Джон У. Давер', @dower ],
  [ 'person2.jpg', 'Эндрю Гордон', @gordon ]
]
authors_list.each do |photo, name, about|
  Author.create!( photo: photo, name: name, about: about )
end

teachers_list = [
  [ 1, 1 ],
  [ 1, 2 ]
]
teachers_list.each do |course, author|
  Teacher.create!( courses_id: course, authors_id: author )
end

#news one
@news_title_one = 'СОЗДАНИЕ ИННОВАЦИОННОЙ СРЕДЫ ИНСТИТУТА: В СКОЛТЕХЕ ИССЛЕДОВАНИЯ И ОБРАЗОВАНИЕ БУДУТ ИНТЕГРИРОВАНЫ'
@news_logo_one = 'slider_video_img_02.jpg'
@news_picture_one = 'img6.jpg'
@news_description_one = 'Сколковский институт науки и технологий (Сколтех) – негосударственный образовательно-исследовательский институт, который находится в Сколково (Россия, Московская область). Созданный в 2011 году при участии Массачусетского технологического института (MIT), Сколтех готовит новые поколения исследователей и предпринимателей, продвигает научные знания и содействует технологическим инновациям с целью решения важнейших проблем, стоящих перед Россией и миром. Институт строит свою работу, опираясь на лучшие традиции российских и международных образовательных и исследовательских практик, делая особый акцент на предпринимательской и инновационной деятельности.
Модель Сколтеха предусматривает интеграцию образования и исследований, причем как фундаментальных, так и прикладных. Институт будет тесно связан с промышленной и предпринимательской экосистемой, что позволит развивать качественные исследования и генерировать приток инноваций в экономику.'

#news two
@news_title_two = 'ПЕТРОЗАВОДСКИЙ ГОСУДАРСТВЕННЫЙ УНИВЕРСИТЕТ'
@news_logo_two = 'slider_video_img_01.jpg'
@news_picture_two = 'video.jpg'
@news_description_two = 'Петрозаводский Государственный университет соглашение о сотрудничестве академическое партнерство с северо-западным образовательным кластером.'



news_list = [
  [ @news_title_one, @news_logo_one, @news_picture_one, @news_description_one ],
  [ @news_title_two, @news_logo_two, @news_picture_two, @news_description_two ]
]
news_list.each do |title, logo, picture, description|
  News.create!( title: title, logo: logo, picture: picture, description: description )
end