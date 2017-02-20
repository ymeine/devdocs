################################################################################
# See lib\docs\scrapers\support_tables.rb
################################################################################

module Docs
	class Kyk < Doc
		include Instrumentable

		self.name = 'Kyk'
		self.slug = 'kyk'
		self.type = 'kyk'

		def build_pages
			index_page = {
				path: 'index',
				store_path: 'index.html',
				output: INDEX_PAGE,
				entries: [Entry.new(nil, 'index', nil)]
			}

			yield index_page

			id = 'kyk_std_basic_number'
			title = 'kyk / std / basic / number'

			page = {
				path: id,
				store_path: "#{id}.html",
				output: PAGE title,
				entries: [Entry.new(title, id, 'std')]
			}
		end

		def INDEX_PAGE
			<<-HTML.strip_heredoc
				<h1>Kyk</h1>
			HTML
		end

		def PAGE title
			<<-HTML.strip_heredoc
				<h1>#{title}</h1>

				<p>Hello! This is a succesful test!</p>
			HTML
		end
	end
end
