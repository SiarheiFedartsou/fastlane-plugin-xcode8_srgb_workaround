describe Fastlane::Actions::Xcode8SrgbWorkaroundAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The xcode8_srgb_workaround plugin is working!")

      Fastlane::Actions::Xcode8SrgbWorkaroundAction.run(nil)
    end
  end
end
