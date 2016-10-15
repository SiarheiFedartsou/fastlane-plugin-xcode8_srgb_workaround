module Fastlane
  module Actions
    class ApplyXcode8SrgbWorkaroundAction < Action
      def self.run(params)
        for subdirectory in params[:subdirectories]
          pattern = File.expand_path(subdirectory) + '/*.png'
          for png in Dir[pattern]
            `sips -m '/System/Library/Colorsync/Profiles/sRGB Profile.icc' '#{png}' --out '#{png}'`
          end
        end
      end

      def self.description
        "Converts PNGs in your project to sRGB format to avoid crashes when building with Xcode 8 for iOS 8 and earlier deployment target"
      end

      def self.authors
        ["SiarheiFiedartsou"]
      end

      def self.available_options
        [

          FastlaneCore::ConfigItem.new(key: :subdirectories,
                                description: "List of subdirectories where PNGs must be detected and converted to sRGB",
                                default_value: ['./**'],
                                      type: Array)                         
        ]
      end

      def self.is_supported?(platform)
        [:ios].include?(platform)
      end
    end
  end
end
