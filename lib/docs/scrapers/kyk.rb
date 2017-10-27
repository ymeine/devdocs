################################################################################
# See lib\docs\scrapers\support_tables.rb
################################################################################


module Docs
	class Kyk < Doc
		include Instrumentable

		NAME = 'kyk'

		self.name = NAME
		self.slug = NAME
		self.type = NAME

		def build_pages
			# ------------------------------------------------------------------

			index_page = {
				path: 'index',
				store_path: 'index.html',
				output: index_page_content,
				entries: [Entry.new(nil, 'index', nil)]
			}

			yield index_page

			# ------------------------------------------------------------------

			id = 'kyk_std_basic_number'
			_type = 'std/basic/number'
			title = "#{NAME}/#{_type}#to_integer"

			page = {
				path: id,
				store_path: "#{id}.html",
				output: page_content(title, "Ensures that the input value is an integer, if it can."),
				entries: [
					Entry.new(title, id, _type)
				]
			}

			yield page

			# ------------------------------------------------------------------

			id = 'kyk_std_basic_number'
			_type = 'std/basic/number'
			title = "#{NAME}/#{_type}#to_integer"

			page = {
				path: id,
				store_path: "#{id}.html",
				output: page_content(title, "Ensures that the input value is an integer, if it can."),
				entries: [
					Entry.new(title, id, _type)
				]
			}

			yield page

			# ------------------------------------------------------------------

			id = 'kyk_std_io_fs'
			_type = 'std/io/fs'
			title = "#{NAME}/#{_type}#read"

			page = {
				path: id,
				store_path: "#{id}.html",
				output: page_content(title, "Reads the content of the file with the given path."),
				entries: [
					Entry.new(title, id, _type)
				]
			}

			yield page
		end

		def index_page_content
			<<-HTML.strip_heredoc
				<h1>Kyk</h1>
			HTML
		end

		def page_content title, content
			<<-HTML.strip_heredoc
				<h1>#{title}</h1>

				<p>#{content}</p>
			HTML
		end
	end
end
