module AdnHashtagPhotos
  module Uploader
    class Base
      # @param [Array] annotations
      def initialize annotations
        @annotations = annotations
      end

      # @param [Array] annotations
      def self.detected?
        raise NotImplementedError
      end
    end
  end
end
