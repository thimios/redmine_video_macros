require 'redmine'

Redmine::Plugin.register :redmine_vimeo do
	name 'Redmine Video Macros plugin'
	author 'Dan Wilcox'
	description 'Redmine wiki macros for embedding video'
	version '0.1.0'
	url 'http://github.com/danomatika/redmine_vimeo'
	author_url 'http://danomatika.com'

	# Youtube, originally by J.W.Marsden http://jwm.slavitica.net/p/projects/redmine-youtube
	Redmine::WikiFormatting::Macros.register do
		desc = "Redmine Video Youtube Macro! The correct usage is {{youtube(&lt;video key&gt;,[&lt;width&gt;,&lt;height&gt;])}}. eg {{youtube(4N3N1MlvVc4)}} or {{youtube(4N3N1MlvVc4,800,600)}}</pre>"
		# Register youtube macro
		macro :youtube do |youtube_wiki_content, args|
			RAILS_DEFAULT_LOGGER.info "Video Plugin (#{args.join(",")})"
			v = ""
			h = 400
			w = 600
			if args.length >= 1
				v = args[0]
				if args.length == 3
					w = args[1]
					h = args[2]
				end
				out = <<"EOF"
<iframe class="youtube-player" type="text/html" width="#{w}" height="#{h}" src="http://www.youtube.com/embed/#{v}" frameborder="0"></iframe>
EOF
			else
				out = "<pre>Error in youtube macro. The correct usage is {{youtube(&lt;video key&gt;,[&lt;width&gt;,&lt;height&gt;])}}. \r\neg {{youtube(4N3N1MlvVc4)}} or {{youtube(4N3N1MlvVc4,800,600)}}</pre>"
			end

		end
	end	

	# Vimeo
	Redmine::WikiFormatting::Macros.register do
		desc = "Redmine Video Vimeo Macro! The correct usage is {{vimeo(&lt;video key&gt;,[&lt;width&gt;,&lt;height&gt;])}}. eg {{vimeo(4N3N1MlvVc4)}} or {{vimeo(4N3N1MlvVc4,800,600)}}</pre>"
		# Register vimeo macro
		macro :vimeo do |vimeo_wiki_content, args|
			RAILS_DEFAULT_LOGGER.info "Video Plugin (#{args.join(",")})"
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
