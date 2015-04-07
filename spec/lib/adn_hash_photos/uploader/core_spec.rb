require 'spec_helper'

describe AdnHashtagPhotos::Uploader::Core do
  describe '#detected?' do
    it 'detects' do
      annotations = [
        {type: 'com.hashpan.client',      value: {version: '2.0.1'}},
        {type: 'net.app.core.oembed',     value: {provider_url: 'http://bli.ms', short_code:21346, oembed_json_url: 'https://api.bli.ms/oembed/json/?url=https://bli.ms/21346&width=640', title: '\u0160koda \u017ee z toho nejde n\u011bco vyr\u00e1b\u011bt :) #IguanaLister #spikes', url: 'https://files.app.net/wgtm7DBLv', html: '<iframe src=\'https://api.bli.ms/oembed/iframe/21346/\' scrolling=\'no\' width=\'640\' height=\'853\' frameborder=\'0\'></iframe>', embeddable_url: 'https://bli.ms/21346', author_name: 'lipoqil', height:853, thumbnail_width:200, width:640, version: '1.0', author_url: 'https://alpha.app.net/lipoqil', file_size:159748, aspect_ratio:1.333333, provider_name: 'BLIMS', thumbnail_url: 'https://files.app.net/wgtm7DBLv/400', type: 'photo', thumbnail_height:267, mime_type: 'image/jpeg'}},
        {type: 'net.app.core.crosspost',  value: {canonical_url: 'http://bli.ms/21346'}}
      ]

      detection = AdnHashtagPhotos::Uploader::Core.detected? annotations

      expect(detection).to be_truthy
    end
  end
end
