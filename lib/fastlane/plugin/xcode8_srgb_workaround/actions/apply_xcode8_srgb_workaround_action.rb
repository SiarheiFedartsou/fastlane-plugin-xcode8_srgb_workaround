module Fastlane
  module Actions
    class ApplyXcode8SrgbWorkaroundAction < Action
      def self.run(params)
        params[:subdirectories].each { |subdirectory|
          ['png', 'jpg', 'jpeg'].each { |fmt|
            pattern = File.expand_path(subdirectory) + "/*.#{fmt}"
            Dir[pattern].each { |resource_path|
                `sips -m '/System/Library/Colorsync/Profiles/sRGB Profile.icc' '#{resource_path}' --out '#{resource_path}'`
            }
          }

        }
      end

      def self.description
        "Converts PNGs and JPEGs in your project to sRGB format to avoid crashes when building with Xcode 8 for iOS 8 and earlier deployment target"
      end

      def self.authors
        ["SiarheiFiedartsou"]
      end

      def self.available_options
        [

          FastlaneCore::ConfigItem.new(key: :subdirectories,
                                description: "List of subdirectories where PNGs and JPEGs must be detected and converted to sRGB",
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
