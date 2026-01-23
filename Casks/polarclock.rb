cask "polarclock" do
  version "1.0.0"
  sha256 "db89c51697bc4400fe60ebcca6f5964a789f03b9744344b1ce1c1eeca93942a9"

  url "https://github.com/ryanrishi/PolarClock/releases/download/v#{version}/PolarClock.saver.zip"
  name "PolarClock"
  desc "Polar clock screen saver for macOS"
  homepage "https://github.com/ryanrishi/PolarClock"

  screen_saver "PolarClock.saver"

  caveats <<~EOS
    This screen saver is not signed. After installation, you may need to:
    1. Open System Settings → Privacy & Security
    2. Click "Open Anyway" when prompted about the unidentified developer
  EOS
end
