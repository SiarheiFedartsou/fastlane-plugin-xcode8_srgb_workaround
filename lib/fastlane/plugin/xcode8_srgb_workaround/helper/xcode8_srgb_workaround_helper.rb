module Fastlane
  module Helper
    class Xcode8SrgbWorkaroundHelper
      # class methods that you define here become available in your action
      # as `Helper::Xcode8SrgbWorkaroundHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the xcode8_srgb_workaround plugin helper!")
      end
    end
  end
end
