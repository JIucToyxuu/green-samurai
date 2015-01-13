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


# course_list = [
#   [ "Germany", 81831000 ],
#   [ "France", 65447374 ],
#   [ "Belgium", 10839905 ],
#   [ "Netherlands", 16680000 ]
# ]

# course_list.each do |name, population|
#   Country.create( name: name, population: population )
# end


# t.string :name,			null: false, default: ""
# 			t.references :university
# 			t.string :code,			null: false, default: ""
# 			t.datetime :date_begin,			null: false, default: ""
# 			t.string :duration_course,			null: false, default: ""
# 			t.string :hours_per_week,			null: false, default: ""
# 			t.string :picture
# 			t.string :title
# 			t.string :about,			null: false, default: ""
# 			t.string :notes
# 			t.integer :limit,			null: false, default: 0
# 			t.boolean :free,			:default => true