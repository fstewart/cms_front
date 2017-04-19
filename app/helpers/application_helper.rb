module ApplicationHelper
	
	def link_to_in_li(body, url, html_options = {})
	  active = "active" if current_page?(url)
	  content_tag :li, class: active do
	    link_to body, url, html_options
	  end
	end
	
  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end


	def random_background_photo
		photos = [
			"/assets/img/bidgood_sm.jpg",
			"/assets/img/bruno1.jpg",
			"/assets/img/gorgas.jpg",
			"/assets/img/quad.jpg",
			"/assets/img/commencement.jpg",
			"/assets/img/alston30.jpg",
			"/assets/img/presidentsmansion01_1920.jpg" ]
		photos[rand(photos.size)]
	end
	
	def random_background_videos_safari
		videos = [
				"https://player.vimeo.com/external/182138942.hd.mp4?s=59d07ad47ba05f67411a23742aa322f3606680fe&profile_id=174",
				"https://player.vimeo.com/external/184698384.hd.mp4?s=5fce029d512d7f484223ed0a6e8ab207639c3f95&profile_id=174",
				"https://player.vimeo.com/external/184010420.hd.mp4?s=7d5ef5ce90741c58c29190708e5d333617009641&profile_id=119",
				"https://player.vimeo.com/external/182139061.hd.mp4?s=cbf2db003419fb959842780d34065023b195611f&profile_id=174",
				"https://player.vimeo.com/external/182138939.hd.mp4?s=5ded2b9243fc927eea56562a998e4abeb35c28f3&profile_id=174"]
		videos[rand(videos.size)]
	end

  def phone_number_link(text)
    sets_of_numbers = text.scan(/[0-9]+/)
    number = "+1-#{sets_of_numbers.join('-')}"
    link_to text, "tel:#{number}"
	end
	
end
