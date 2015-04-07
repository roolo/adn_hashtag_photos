require 'spec_helper'

describe AdnHashtagPhotos::Uploader::Climber do
  describe '#detected?' do
    it 'detects' do
      annotations = [
        {type: 'com.alwaysallthetime.climber',        value: {file_token_read: 'aT5-qSn2Y10yczF2D8AyGEAIDeh7h_o-IkjRS-hmgcQGP9W8KkdcF7Pprr59wAykNhHWbv5RsNNpxzgyUwrhbBMu8kLu2GcKu4U62q7fOnqPb1-flJ9YGWi_RiXGZzBYqp_e601ExRO5iSULAser8AJYIMBuVLn6WztdzVXE5GQHpYpYbfOcnzsjfMoKvepwT', url: 'https://adn-uf-01.s3.amazonaws.com/adn-uf-01/ze/Cm/mM/zeCmmMmwKTvtiEtMbwohFypgPRqhZ-qlSirqlMVSczc?Signature=KSsc3Ejfm9JVBkq%2B9lhxUSxcTyk%3D&Expires=1428368400&AWSAccessKeyId=AKIAIKZV7DVMMUT2ECFQ&response-cache-control=public%2C%20max-age%3D7200%2C%20s-maxage%3D172800&response-content-disposition=attachment%3B%20filename%2A%3DUTF-8%27%27climber-11-30-2013%252016%253A52%253A38.mp4', file_id: '271055', url_expires: '2015-04-07T01:00:00Z'}},
        {type: 'com.alwaysallthetime.climber.poster', value: {url: 'https://files.app.net/1/271054/akvpDRWwUMA6y2fkjv_RczwP_WZLOjLJJgWXUW4ElQdOWHfDFAbjwe3KSUtQ7s3OBVfqfb2SgO5fDJUHPVGkmgLV-Fqb1kwb3fjgwNQyo8WpWFF_9p_96XiZqo_XN28x3HHa2ZouFlwDBSkIRrb3_cOS4iVI34bQKB3l50PFOMqMMGeZ8eTfGNPRFMSCzFvP5'}}
      ]

      detection = AdnHashtagPhotos::Uploader::Climber.detected? annotations

      expect(detection).to be_truthy
    end
  end
end
