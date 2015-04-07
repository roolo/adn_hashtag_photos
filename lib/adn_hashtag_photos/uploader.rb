require_relative './uploader/base'
require_relative './uploader/climber'
require_relative './uploader/core'

module AdnHashtagPhotos
  module Uploader
    # Detects uploader of photo / annotations structure
    #
    # @param [Array] annotations
    # @return [Uploader::Base]
    def self.detect_uploader annotations
      [Climber, Core].map do |provider|
        provider.new annotations if provider.detected? annotations
      end.compact.first
    end
  end
end
