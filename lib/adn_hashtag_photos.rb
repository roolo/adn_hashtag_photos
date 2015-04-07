require 'adn_hashtag_photos/version'
require 'rubygems'


module AdnHashtagPhotos
  autoload :GalleryBuilder, 'adn_hashtag_photos/gallery_builder'
  autoload :PostsLoader,    'adn_hashtag_photos/posts_loader'

  # Modules
  autoload :Uploader, 'adn_hashtag_photos/uploader'
end
