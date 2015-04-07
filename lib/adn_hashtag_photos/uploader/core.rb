module AdnHashtagPhotos
  module Uploader
    class Core < Base
      # @param [Array] annotations
      def self.detected? annotations
        annotations.any?{|item|
          item[:type] == 'net.app.core.oembed'
        }
      end

      def thumbnail_url
        @annotations.detect{|annotation|
          annotation[:type] == 'net.app.core.oembed'
        }[:value][:thumbnail_url]
      end
    end
  end
end
