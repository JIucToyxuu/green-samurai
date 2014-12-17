module PagesHelper
	def nav
		html = '<nav class="course_nav"><ul>'

			html += '<li' + current(kurs_uch_plan_path) + '>'
			html +=	'<a href="#">лекции</a>'
			html += '</li>'
	
			html += '<li' + current(kurs_uch_plan_path) + '>'
			html +=	'<a href="#">о курсе</a>'
			html += '</li>'
	
			html += '<li' + current(kurs_uch_plan_path) + '>'
			html +=	link_to('учебный план', kurs_uch_plan_path)
			html += '</li>'
	
			html += '<li' + current(kurs_uch_plan_path) + '>'
			html +=	'<a href="#">форум</a>'
			html += '</li>'
	
			html += '<li' + current(kurs_uch_plan_path) + '>'
			html +=	link_to('успеваемость', kurs_uspevaemost_path)
			html += '</li>'

    	html += '</ul></nav>'



		html.html_safe
	end

	def current(path)
		if current_page?(path)
			return ' class="current" '
		else
			return ''
		end
	end
end