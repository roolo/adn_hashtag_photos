require 'spec_helper'

describe AdnHashtagPhotos::PostsLoader do
  describe '#load' do
    it 'loads all posts', vcr: {cassette_name: :adn_posts} do
      loader = AdnHashtagPhotos::PostsLoader.new 'IguanaLister'

      expect(loader.posts.count).to eq 47
    end

  end
end
