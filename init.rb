require 'redmine'

Redmine::Plugin.register :redmine_vimeo do
	name 'Redmine Vimeo wiki macro plugin'
	author 'Dan Wilcox'
	description 'This plugin adds a vimeo macro to Redmine that allows the posting of Vimeo videos.'
	version '0.0.1'
	url 'http://github.com/danomatika/redmine_vimeo'
	author_url 'http://danomatika.com'
	
	Redmine::WikiFormatting::Macros.register do
		desc = "Redmine Vimeo Macro! The correct usage is {{vimeo(&lt;video key&gt;,[&lt;width&gt;,&lt;height&gt;])}}. eg {{vimeo(4N3N1MlvVc4)}} or {{vimeo(4N3N1MlvVc4,800,600)}}</pre>"
		# Register vimeo macro
		macro :vimeo do |vimeo_wiki_content, args|
			RAILS_DEFAULT_LOGGER.info "Vimeo Plugin (#{args.join(",")})"
			v = ""
			w = 600
			h = 400
			if args.length >= 1
				v = args[0]
				if args.length == 3
					w = args[1]
					h = args[2]
				end
				out = <<"EOF"
<iframe src="http://player.vimeo.com/video/#{v}" width="#{w}" height="#{h}" frameborder="0"></iframe>
EOF
			else
				out = "<pre>Error in vimeo macro. The correct usage is {{vimeo(&lt;video key&gt;,[&lt;width&gt;,&lt;height&gt;])}}. \r\neg {{vimeo(4N3N1MlvVc4)}} or {{vimeo(4N3N1MlvVc4,800,600)}}</pre>"
			end

		end
	end
	
	
end
