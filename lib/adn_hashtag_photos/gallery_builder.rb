require 'rest_client'

module AdnHashtagPhotos
  # This class prepares simple objects from ADN posts
  class GalleryBuilder
    # @param [String] hashtag Hashtag to filter posts by
    def initialize hashtag
      @posts_loader = PostsLoader.new hashtag
      @hashtag = hashtag
    end

    # @return [Array]
    def photos
      posts = @posts_loader.posts.reject do |item|
        item[:annotations].empty? || item[:annotations].any?{|annotation|
          annotation[:type] == 'net.app.core.language'
        }

      end

      posts.inject([]) do |memo, post|
        memo << {
          content: post[:html],
          thumbnail_url: detect_data(post[:annotations], :thumbnail_url)
        }

        memo
      end
    end

    # @param [Array]  annotations
    # @param [Symbol] key_name
    def detect_data annotations, key_name
      detected_uploader = Uploader.detect_uploader annotations

      begin
      detected_uploader.send key_name
      rescue
        raise annotations.inspect
      end

    end
  end
end
