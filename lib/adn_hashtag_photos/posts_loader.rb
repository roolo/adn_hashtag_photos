require 'rest_client'

module AdnHashtagPhotos
  # This class loads all posts for given hashtag
  class PostsLoader
    # @param [String] hashtag Hashtag to filter posts by
    def initialize hashtag
      @posts_data = []
      @posts_url = 'https://api.app.net/posts/tag/%s?include_annotations=1&count=20'%[
        hashtag
      ]

    end

    # @return [Array]
    def posts
      if @posts_data.empty?
        @posts_data = load_posts
      end

      @posts_data
    end

    # This method recursively loads older posts as long as there are any
    #
    # @param [Nil, Integer] before_id Id of oldest post we have so far
    # @param [Array] loaded_posts
    #
    # @return [Array]
    def load_posts before_id = nil, loaded_posts = []
      posts_url = @posts_url
      posts_url += '&before_id=' + before_id.to_s if before_id

      the_response = RestClient.get(posts_url)

      this_load = JSON.parse( the_response,
                              symbolize_names: true
      )

      loaded_posts.push(this_load[:data]).flatten!

      if this_load[:meta][:more]
        load_posts(
            this_load[:data].last[:id],
            loaded_posts
          )
      else
        loaded_posts
      end
    end
  end
end
