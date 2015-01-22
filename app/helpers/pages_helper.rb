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

		html += '<li' + current(news_path) + '>'
		html +=	link_to('Новости', news_path)
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

	#customize paginate
	class LinkRenderer < WillPaginate::ActionView::LinkRenderer
			protected
		def page_number(page)
			unless page == current_page
				link(page, page, :rel => rel_value(page))
			else
				tag(:li, page, :class => "active")
			end
		end
		def gap
			text = @template.will_paginate_translate(:page_gap) { '&hellip;' }
			%(<li><span>#{text}</span></li>)
		end
		def next_page
			num = @collection.current_page < @collection.total_pages && @collection.current_page + 1
			previous_or_next_page(num, @options[:next_label], 'paginator')
		end
		def previous_or_next_page(page, text, classname)
			if page
				link(text, page, :class => classname)
			else
				tag(:li, text)
			end
		end
		def html_container(html)
			tag(:ul, html, container_attributes)
		end

	private

		def link(text, target, attributes = {})
			if target.is_a? Fixnum
				attributes[:rel] = rel_value(target)
				target = url(target)
			end
			unless target == "#"
					attributes[:href] = target
			end
			classname = attributes[:class]
			attributes.delete(:classname)
			tag(:li, tag(:a, text, attributes), :class => classname)
		end
	end

	def pagination_links(collection, options = {})
		options[:renderer] ||= PagesHelper::LinkRenderer
		options[:class] ||= 'paginator'
		options[:inner_window] ||= 2
		options[:outer_window] ||= 1
		will_paginate(collection, options)
	end
end