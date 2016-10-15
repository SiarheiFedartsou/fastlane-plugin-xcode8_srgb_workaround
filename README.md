# xcode8_srgb_workaround plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-xcode8_srgb_workaround)

## Getting Started

This project is a [fastlane](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-xcode8_srgb_workaround`, add it to your project by running:

```bash
fastlane add_plugin xcode8_srgb_workaround
```

## About xcode8_srgb_workaround

Converts PNGs and JPEGs in your project to sRGB format to avoid crashes when building with Xcode 8 for iOS 8 and earlier deployment target. Problem described in more detail [here](http://stackoverflow.com/questions/39404285/xcode-8-build-crash-on-ios-9-2-and-below) and [here](https://forums.developer.apple.com/thread/61643).

Note: if you don't support iOS 8 and earlier you likely don't need this plugin.

## Usage example

```ruby
apply_xcode8_srgb_workaround(subdirectories: ['Resources/**', 'Assets/**'])
```
or just
```ruby
apply_xcode8_srgb_workaround # will find resources recursively in your root directory
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/PluginsTroubleshooting.md) doc in the main `fastlane` repo.

## Using `fastlane` Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Plugins.md).

## About `fastlane`

`fastlane` is the easiest way to automate building and releasing your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
