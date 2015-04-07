module AdnHashtagPhotos
  module Uploader
    class Climber < Base
      # @param [Array] annotations
      def self.detected? annotations
        annotations.any?{|item|
          item[:type] == 'com.alwaysallthetime.climber.poster'
        }
      end

      def thumbnail_url
        @annotations.detect{|annotation|
          annotation[:type] == 'com.alwaysallthetime.climber.poster'
        }[:value][:url]
      end
    end
  end
end
