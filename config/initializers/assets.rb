# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
#Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
Rails.application.config.assets.precompile += %w( cocoon.js )
#Rails.application.config.assets.precompile += %w( scripts.min.js )
Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( ckeditor/* )
Rails.application.config.assets.precompile += %w( dashboard.css )
Rails.application.config.assets.precompile += %w( dashboard.js )
Rails.application.config.assets.precompile += %w( alumni.css alumni.js gmaps.js placeholder.js ie8.css.scss stickit_main.css stickit_extensions.css underscore.js bootstrap.min.js bootstrap-submenu.min.css )
Rails.application.config.assets.precompile += %w( libs/* )
Rails.application.config.assets.precompile += %w( jquery-1.6.2.min.js swfobject.js modernizr.video.js video_background.js )
