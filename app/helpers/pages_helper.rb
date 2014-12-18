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

	def aside_menu
		html = '<div class="col-sm-3 col-sm-height col-top main_sidebar"><aside><ul class="side_menu">'

		html += '<li' + current(kak_eto_rabotaet_path) + '>'
		html +=	link_to('как это работает', kak_eto_rabotaet_path)
		html += '</li>'

		html += '<li' + current(questions_path) + '>'
		html +=	link_to('Частые вопросы', questions_path)
		html += '</li>'

		html += '<li' + current(kurs_uch_plan_path) + '>'
		html +=	link_to('преподавателям', kurs_uspevaemost_path)
		html += '</li>'

		html += '<li' + current(about_path) + '>'
		html +=	link_to('О проекте', about_path)
		html += '</li>'

		html += '<li' + current(kurs_uch_plan_path) + '>'
		html +=	link_to('Новости', kurs_uspevaemost_path)
		html += '</li>'

		html += '<li' + current(contacts_path) + '>'
		html +=	link_to('Контакты', contacts_path)
		html += '</li>'

		html += '</div></aside></ul>'

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