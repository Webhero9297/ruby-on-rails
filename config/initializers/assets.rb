# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )


Rails.application.config.assets.precompile += %w( css/normalize.css )
Rails.application.config.assets.precompile += %w( css/webflow.css )
Rails.application.config.assets.precompile += %w( css/amz.webflow.css )
Rails.application.config.assets.precompile += %w( mainpage.scss )

Rails.application.config.assets.precompile += %w( js/modernizr.js )
Rails.application.config.assets.precompile += %w( js/webflow.js )
Rails.application.config.assets.precompile += %w( js/highcharts/highcharts.js )
Rails.application.config.assets.precompile += %w( js/highcharts/highcharts-more.js )
Rails.application.config.assets.precompile += %w( js/highcharts/highstock.js )